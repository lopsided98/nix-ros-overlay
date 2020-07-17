
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, moveit-ros-planning, roscpp, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-robot-interaction";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_robot_interaction/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "5368e97e86d48adca87f5fe04a0e5547faaf705625a96dd333fa54ce0462439d";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-planning roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
