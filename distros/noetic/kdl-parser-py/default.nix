
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rostest, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-kdl-parser-py";
  version = "1.14.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "kdl_parser-release";
        rev = "release/noetic/kdl_parser_py/1.14.2-1";
        sha256 = "sha256-aMYdlUJX/gNJ33S06mLvcyrgO+p5yipiK1NUTyHSY38=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.pykdl urdfdom-py ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg python3Packages.setuptools ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser_py</tt> provides Python tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
