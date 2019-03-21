
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, tf2-geometry-msgs, catkin, tf2-ros, tf2, interactive-markers, tf2-eigen, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-robot-interaction";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_robot_interaction/1.0.1-0.tar.gz;
    sha256 = "7667565bf9ad5150421244374497baff91b46bc5c8ed9dd3f53e2f854480a43d";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning tf2 interactive-markers tf2-geometry-msgs tf2-eigen roscpp tf2-ros ];
  nativeBuildInputs = [ moveit-ros-planning tf2 interactive-markers tf2-geometry-msgs tf2-eigen catkin roscpp tf2-ros ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    #license = lib.licenses.BSD;
  };
}
