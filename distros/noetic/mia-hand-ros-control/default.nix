
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-driver, pluginlib, ros-controllers, roscpp, rqt-joint-trajectory-controller, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-ros-control";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Prensilia-srl";
        repo = "mia_hand_ros_pkgs-release";
        rev = "release/noetic/mia_hand_ros_control/1.0.2-1";
        sha256 = "sha256-JwPZNs2XqmhXeNFJQtLg85wChLLxm3wUxa/L1Qr3Bto=";
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
