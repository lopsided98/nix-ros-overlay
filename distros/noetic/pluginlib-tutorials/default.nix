
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pluginlib-tutorials";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_tutorials-release";
        rev = "release/noetic/pluginlib_tutorials/0.2.0-1";
        sha256 = "sha256-wA7L3gANhzeLnJtHF/4hbASwjZCqS7TM0q7yGPVW6kc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
