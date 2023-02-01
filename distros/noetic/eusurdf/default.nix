
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, python3Packages, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-eusurdf";
  version = "0.4.4-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_model_tools-release";
        rev = "release/noetic/eusurdf/0.4.4-2";
        sha256 = "sha256-RPIEw9htKgsXZ4hb6vjPYQeRWgJz5EZKxdbop97NaBM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros python3Packages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
