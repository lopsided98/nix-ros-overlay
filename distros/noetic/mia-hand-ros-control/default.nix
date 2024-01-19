
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-driver, pluginlib, ros-controllers, roscpp, rqt-joint-trajectory-controller, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-control";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_control/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7533ff9d9288bc4a672a546a7a6dd93cb96148cc37808003375be12d573e1e28";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface mia-hand-description mia-hand-driver pluginlib ros-controllers roscpp rqt-joint-trajectory-controller trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing Mia Hand to ROS Control.

    Tested under ubuntu 18.04.3 LTS and 20.04.01 and ROS Noetic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
