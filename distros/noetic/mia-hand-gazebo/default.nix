
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-ros-control, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-ros-control, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-gazebo";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_gazebo/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "d6c0d9e445c9924203c1d902c8e1dd4b548e5a09b7d0c1b289a65bfa792894f7";
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
