
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo-plugins";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_simulator-release";
        rev = "release/noetic/leo_gazebo_plugins/1.1.0-1";
        sha256 = "sha256-G7Ka1HmNoZtk2Rat2nAKH6GTf18K7M/XSWoumgIB1YU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for simulating Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
