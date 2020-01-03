
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, controller-manager-tests, hardware-interface, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw-tests";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw_tests/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "e32b1cb024910e272987686faa470d1bdf98860227eb0a2e368415ca3ac9102f";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager controller-manager-tests hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The combined_robot_hw_tests package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
