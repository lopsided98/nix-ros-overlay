
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, pcl-ros, robot-state-publisher, roscpp, roslaunch, rospy, rostest, rviz, tf2, tf2-geometry-msgs, tf2-ros, toposens-description, toposens-driver, toposens-msgs, turtlebot3-teleop, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-toposens-pointcloud";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_pointcloud/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "f534b81233f4e2fd347254c66cfd16d52e028c2ef5a1fbf17f47560bd8c75461";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-ros robot-state-publisher roscpp rospy rviz tf2 tf2-geometry-msgs tf2-ros toposens-description toposens-driver toposens-msgs turtlebot3-teleop visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
