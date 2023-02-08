
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robosense-description, robosense-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-robosense-simulator";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tomlogan501";
        repo = "robosense_simulator_release";
        rev = "release/melodic/robosense_simulator/1.0.0-1";
        sha256 = "sha256-dq4zElzwHpOrx4PqJCSySdIaZ/xkP0Eekm6OvuAa0nw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robosense-description robosense-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Robosense simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
