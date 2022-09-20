
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-control-gui, open-manipulator-controller, open-manipulator-description, open-manipulator-libs, open-manipulator-moveit, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "8de684b52de5da0e425146ae3a13c0ab79f047544aa163c5b3344b8df2284ea3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-control-gui open-manipulator-controller open-manipulator-description open-manipulator-libs open-manipulator-moveit open-manipulator-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    license = with lib.licenses; [ asl20 ];
  };
}
