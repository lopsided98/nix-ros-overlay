
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, interactive-markers, moveit-ros-planning, pluginlib, roscpp, rosunit, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-robot-interaction";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_robot_interaction/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "cb09213ad4784da0ed290bda01e436fab3e7303deca1c1fbefe5ed37a6775671";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen-conversions interactive-markers moveit-ros-planning pluginlib roscpp tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that offer interaction via interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
