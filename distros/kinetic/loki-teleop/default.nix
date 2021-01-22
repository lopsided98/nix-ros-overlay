
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-loki-teleop";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_teleop/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "d7d5a44c127435058bacef10c2aa4f4921b6a3ddc4ae003b01fdfcf210fa9ff8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The loki_teleop package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
