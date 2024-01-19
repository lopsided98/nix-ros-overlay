
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-bringup";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_bringup/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "68d68e63d33613b45e437abc06eb8fe24037aad21fa119a46b09a0f191fcf3e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for grouping together all Mia Hand config and launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
