
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-with-tb3-description, open-manipulator-with-tb3-tools, open-manipulator-with-tb3-waffle-moveit, open-manipulator-with-tb3-waffle-pi-moveit }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "92ac21aa5766a9a50f0d1db22e4585628d48d3e3fcafe7b397420e3e431ca3e2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-with-tb3-description open-manipulator-with-tb3-tools open-manipulator-with-tb3-waffle-moveit open-manipulator-with-tb3-waffle-pi-moveit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    license = with lib.licenses; [ asl20 ];
  };
}
