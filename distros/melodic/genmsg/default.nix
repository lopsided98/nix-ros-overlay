
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmsg";
  version = "0.5.17-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "genmsg-release";
        rev = "release/melodic/genmsg/0.5.17-1";
        sha256 = "sha256-4659So/0dJGGdMB2Ee/qre/KHOS3t6fQZ5s8Gr0pU/o=";
      };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  propagatedBuildInputs = [ catkin pythonPackages.empy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Standalone Python library for generating ROS message and service data structures for various languages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
