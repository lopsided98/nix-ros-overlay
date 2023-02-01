
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-tutorials, catkin, nodelet-tutorial-math, pluginlib-tutorials, turtle-actionlib }:
buildRosPackage {
  pname = "ros-noetic-common-tutorials";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_tutorials-release";
        rev = "release/noetic/common_tutorials/0.2.0-1";
        sha256 = "sha256-EGtOI7YlE5OYkierPInUtwz9XeuxNzbI8d+SVJumA4k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-tutorials nodelet-tutorial-math pluginlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
