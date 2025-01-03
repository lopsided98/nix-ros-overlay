
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, moveit-ros-planning, roscpp, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-robot-interaction";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_robot_interaction/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "f9fa22d6260b7ab3d1dcae44a997ad0a6753309491df9f442b4a1a29af6a955f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ interactive-markers moveit-ros-planning roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Components of MoveIt that offer interaction via interactive markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
