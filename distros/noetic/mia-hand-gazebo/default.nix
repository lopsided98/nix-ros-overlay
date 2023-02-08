
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-ros-control, hardware-interface, joint-limits-interface, mia-hand-description, mia-hand-ros-control, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-gazebo";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Prensilia-srl";
        repo = "mia_hand_ros_pkgs-release";
        rev = "release/noetic/mia_hand_gazebo/1.0.2-1";
        sha256 = "sha256-qJ8I0Do+n0BzslFLUCMDyGTbB127tgQk/kH89atyI8E=";
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
