
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c1427e98473cee816954a8c483e1388360c5df7677f19a2d373c1ebd5b7e4cc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for grouping together all Mia Hand config and launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
