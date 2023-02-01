
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, message-generation, message-runtime, rosconsole, roscpp, std-msgs, turtlesim }:
buildRosPackage {
  pname = "ros-noetic-turtle-actionlib";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_tutorials-release";
        rev = "release/noetic/turtle_actionlib/0.2.0-1";
        sha256 = "sha256-6hC8H1Ulk1quLoBloDa1cY87X6j+z4hCwRQkrN8xxjk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs message-runtime rosconsole roscpp std-msgs turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_actionlib demonstrates how to write an action server and client with the turtlesim. The shape_server provides and action interface for drawing regular polygons with the turtlesim.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
