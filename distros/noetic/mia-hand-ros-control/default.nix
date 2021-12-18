
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-driver, pluginlib, ros-controllers, roscpp, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_ros_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9daf23fdf6134c93b1b0ff4b7ef2ac0d86e7feb68bdb5406b86e1fa1dcf57680";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib control-msgs control-toolbox controller-manager hardware-interface joint-limits-interface mia-hand-description mia-hand-driver pluginlib ros-controllers roscpp trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing Mia Hand to ROS Control.

    Tested under ubuntu 18.04.3 LTS and 20.04.01 and ROS Noetic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
