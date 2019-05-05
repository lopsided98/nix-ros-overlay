
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, catkin, rostest, combined-robot-hw, controller-manager-tests, roscpp }:
buildRosPackage {
  pname = "ros-lunar-combined-robot-hw-tests";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/combined_robot_hw_tests/0.13.3-0.tar.gz;
    sha256 = "7eb213b72f30081d2a7b466d8a7133d9ade582432accb2362d48ce87d60dc91d";
  };

  buildInputs = [ controller-manager hardware-interface combined-robot-hw controller-manager-tests roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface combined-robot-hw controller-manager-tests roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The combined_robot_hw_tests package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
