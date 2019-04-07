
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, catkin, rostest, combined-robot-hw, controller-manager-tests, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-combined-robot-hw-tests";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/combined_robot_hw_tests/0.13.3-0.tar.gz;
    sha256 = "e32b1cb024910e272987686faa470d1bdf98860227eb0a2e368415ca3ac9102f";
  };

  buildInputs = [ controller-manager hardware-interface combined-robot-hw controller-manager-tests roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface combined-robot-hw controller-manager-tests roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The combined_robot_hw_tests package'';
    #license = lib.licenses.BSD;
  };
}
