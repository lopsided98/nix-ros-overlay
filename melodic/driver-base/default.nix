
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, dynamic-reconfigure, std-msgs, catkin, self-test, roscpp, message-runtime, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-driver-base";
  version = "1.6.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/driver_common-release/archive/release/melodic/driver_base/1.6.8-0.tar.gz";
    name = "1.6.8-0.tar.gz";
    sha256 = "8f279b3f0297b7798e82dd8d88949507d9dfa4dc58641d6c8d7ec66f65a70c19";
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
