
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, self-test, catkin, diagnostic-updater, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-driver-base";
  version = "1.6.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/driver_common-release/archive/release/kinetic/driver_base/1.6.8-0.tar.gz;
    sha256 = "a80177f9f8719b9c1a911b4cc118797c12e0ab6a6b0f7f162d8baef282dfd0ce";
  };

  propagatedBuildInputs = [ diagnostic-updater message-runtime self-test dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ diagnostic-updater message-generation self-test dynamic-reconfigure std-msgs catkin roscpp ];

  meta = {
    description = ''A framework for writing drivers that helps with runtime reconfiguration, diagnostics and self-test.

    This package is deprecated.'';
    #license = lib.licenses.BSD;
  };
}
