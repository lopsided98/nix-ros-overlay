
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, tf2-geometry-msgs, catkin, tf2-ros, tf2, interactive-markers, tf2-eigen, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-robot-interaction";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_robot_interaction/1.0.2-1.tar.gz;
    sha256 = "3332b6537faed0c98ece9ea5d64d1b6c3253fa4b3b2ee738fa9bee14b2c772c6";
  };

  buildInputs = [ moveit-ros-planning tf2-geometry-msgs tf2-ros tf2 interactive-markers tf2-eigen roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning tf2-geometry-msgs tf2-ros tf2 interactive-markers tf2-eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
