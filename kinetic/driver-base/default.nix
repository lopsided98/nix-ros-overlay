
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, dynamic-reconfigure, std-msgs, catkin, self-test, roscpp, message-runtime, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-driver-base";
  version = "1.6.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/kinetic/driver_base/1.6.8-0.tar.gz";
    name = "1.6.8-0.tar.gz";
    sha256 = "a80177f9f8719b9c1a911b4cc118797c12e0ab6a6b0f7f162d8baef282dfd0ce";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs self-test roscpp message-generation diagnostic-updater ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs self-test roscpp message-runtime diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A framework for writing drivers that helps with runtime reconfiguration, diagnostics and self-test.

    This package is deprecated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
