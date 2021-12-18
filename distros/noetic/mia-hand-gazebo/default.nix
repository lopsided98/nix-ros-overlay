
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-ros-control, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-ros-control, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-gazebo";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_gazebo/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b8dc2b3eb4e55c26f5ffd9484ca362370ef946d25eab0f73647e9835059b6a49";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros-control hardware-interface joint-limits-interface mia-hand-description mia-hand-ros-control pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for simulating Mia Hand in Gazebo, interfacing simulation with ROS
    Control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
