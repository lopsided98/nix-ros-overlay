
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-teleop";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_teleop/1.2.0-0.tar.gz;
    sha256 = "e50544b8a90f38c20e2ff250224eee48ac0d667fefcb7fa172e1b2dafb6119e8";
  };

  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin geometry-msgs rospy ];

  meta = {
    description = ''Provides teleoperation using keyboard for TurtleBot3.'';
    #license = lib.licenses.BSD;
  };
}
