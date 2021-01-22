
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-kinetic-magni-teleop";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_teleop/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "6601834ac093b7f413956355bd879c67222eaa0e212c7e69e4651c20e1e7a3f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_teleop package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
