
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, open-manipulator-controller, catkin, open-manipulator-libs, open-manipulator-moveit, open-manipulator-teleop, open-manipulator-control-gui, open-manipulator-description }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator/2.0.1-1.tar.gz;
    sha256 = "21b1ba176222c430894ab1bcd70016e2405f13f0905e1982b8cdd64cd49824a5";
  };

  propagatedBuildInputs = [ open-manipulator-libs open-manipulator-moveit open-manipulator-teleop open-manipulator-control-gui open-manipulator-description open-manipulator-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    #license = lib.licenses.Apache 2.0;
  };
}
