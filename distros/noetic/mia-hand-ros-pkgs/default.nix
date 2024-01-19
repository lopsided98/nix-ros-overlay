
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-bringup, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-moveit-config, mia-hand-msgs, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-pkgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_pkgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "e068a990866f6332cca52d145391755c07bab1f8205373d82c8fc2469ca539d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mia-hand-bringup mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-moveit-config mia-hand-msgs mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages to use Mia Hand with ROS tools and ROS control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
