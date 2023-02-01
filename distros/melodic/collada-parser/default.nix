
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, collada-dom, rosconsole, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-collada-parser";
  version = "1.12.13-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "collada_urdf-release";
        rev = "release/melodic/collada_parser/1.12.13-1";
        sha256 = "sha256-7NP/MTNf2aRw5QAwXjBXPaJHgmeNi8hjqUBoHt6xK2w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin urdfdom-headers ];
  propagatedBuildInputs = [ class-loader collada-dom rosconsole urdf urdf-parser-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Collada robot
    description format. The parser reads a Collada XML robot
    description, and creates a C++ URDF model. Although it is possible
    to directly use this parser when working with Collada robot
    descriptions, the preferred user API is found in the urdf package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
