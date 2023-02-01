
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rsm-additions, rsm-core, rsm-msgs, rsm-rqt-plugins, rsm-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-robot-statemachine";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarcoStb1993";
        repo = "robot_statemachine-release";
        rev = "release/melodic/robot_statemachine/1.2.1-1";
        sha256 = "sha256-0hGryP4Y4sjkPAOkME0z4/AJYaBuig8kZOckNOlvy5w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rsm-additions rsm-core rsm-msgs rsm-rqt-plugins rsm-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_statemachine package bundles all functionalities and the GUI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
