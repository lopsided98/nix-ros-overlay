
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-bringup, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-moveit-config, mia-hand-msgs, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-pkgs";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_pkgs/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "4b6fbbffe891c2277bf148c60d2277e1c69328ed925bf5257edead7fb9e23edb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mia-hand-bringup mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-moveit-config mia-hand-msgs mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages to use Mia Hand with ROS tools and ROS control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
