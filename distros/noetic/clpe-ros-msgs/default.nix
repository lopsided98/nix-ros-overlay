
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-clpe-ros-msgs";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "canlab-co";
        repo = "clpe_ros_msgs-ros-release";
        rev = "release/noetic/clpe_ros_msgs/0.1.0-1";
        sha256 = "sha256-agDzkIxGixmIEr5fojkmhNNu9riIN6PC6bewWCty08U=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Messages used by clpe_ros'';
    license = with lib.licenses; [ asl20 ];
  };
}
