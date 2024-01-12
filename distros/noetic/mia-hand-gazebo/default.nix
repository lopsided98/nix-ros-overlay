
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-ros-control, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-ros-control, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-gazebo";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_gazebo/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "65a76cc981c7e7283376aef273ece732f8be91c6a9e9da27ea4be9b0d3d3ebb4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros-control hardware-interface joint-limits-interface mia-hand-description mia-hand-ros-control pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for simulating Mia Hand in Gazebo, interfacing simulation with ROS
    Control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
