
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pluginlib, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-snowbot-operating-system";
  version = "0.0.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "snowbot_release";
        rev = "release/noetic/snowbot_operating_system/0.0.5-1";
        sha256 = "sha256-GLIthTAuyBcsrH/jceuFso5nD1MDyhQh9EvmsSH6dpY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The weather outside is frightful'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
