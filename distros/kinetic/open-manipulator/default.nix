
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-control-gui, open-manipulator-controller, open-manipulator-description, open-manipulator-libs, open-manipulator-moveit, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "21b1ba176222c430894ab1bcd70016e2405f13f0905e1982b8cdd64cd49824a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-control-gui open-manipulator-controller open-manipulator-description open-manipulator-libs open-manipulator-moveit open-manipulator-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    license = with lib.licenses; [ asl20 ];
  };
}
