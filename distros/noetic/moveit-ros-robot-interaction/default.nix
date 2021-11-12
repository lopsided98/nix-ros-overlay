
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, moveit-ros-planning, roscpp, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-robot-interaction";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_robot_interaction/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "cdbce113bea5e1d2177122ca60c25cd310c974ffffd0fbd5815cf705aa6a78df";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-planning roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
