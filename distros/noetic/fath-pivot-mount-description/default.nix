
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-fath-pivot-mount-description";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "fath_pivot_mount_description-release";
        rev = "release/noetic/fath_pivot_mount_description/0.1.1-2";
        sha256 = "sha256-T330klYUS78AFQDqpq/GZy2o49n2tf/5iq7fI5nq8OE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Macro for adding an adjustable, fath pivot mount used for cameras and other sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
