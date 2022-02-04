
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-driver, pluginlib, ros-controllers, roscpp, rqt-joint-trajectory-controller, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-control";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_control/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "3bb26cf31e64e8b7c4aa3e95787dbd80788af7266903ac712b79eec0363469cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface mia-hand-description mia-hand-driver pluginlib ros-controllers roscpp rqt-joint-trajectory-controller trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing Mia Hand to ROS Control.

    Tested under ubuntu 18.04.3 LTS and 20.04.01 and ROS Noetic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
