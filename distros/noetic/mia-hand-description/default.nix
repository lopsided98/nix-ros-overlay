
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-limits-interface, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roscpp, rostime, rviz, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-description";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Prensilia-srl";
        repo = "mia_hand_ros_pkgs-release";
        rev = "release/noetic/mia_hand_description/1.0.2-1";
        sha256 = "sha256-kEisstggLAJIRNgNi55swsNUqc08UDJb5IiOBfshwhE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-limits-interface joint-state-publisher joint-state-publisher-gui robot-state-publisher roscpp rostime rviz sensor-msgs std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing Mia Hand URDF model. Includes Gazebo tags that allow
    for URDF usage in Gazebo simulator. Includes description of the index_thumb
    opposition passive joint.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
