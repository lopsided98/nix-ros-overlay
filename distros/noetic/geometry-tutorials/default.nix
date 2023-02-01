
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf, turtle-tf2 }:
buildRosPackage {
  pname = "ros-noetic-geometry-tutorials";
  version = "0.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "geometry_tutorials-release";
        rev = "release/noetic/geometry_tutorials/0.2.3-1";
        sha256 = "sha256-Md8QxkwXqo4SDF8pHOfVGXLe+6MbjaINZvcBMs8AEJ8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtle-tf turtle-tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
