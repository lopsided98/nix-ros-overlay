
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-bringup, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-moveit-config, mia-hand-msgs, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-pkgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_pkgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "426bb700a89216e43d02b4ff4a06276fa5378a9d6033c87ef4b79d6a448e8f32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mia-hand-bringup mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-moveit-config mia-hand-msgs mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages to use Mia Hand with ROS tools and ROS control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
