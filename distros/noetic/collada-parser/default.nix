
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, collada-dom, rosconsole, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-collada-parser";
  version = "1.12.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/collada_urdf-release/archive/release/noetic/collada_parser/1.12.13-1.tar.gz";
    name = "1.12.13-1.tar.gz";
    sha256 = "a8f581653cdb7959042888e450bb0a814e1fe99cd3e1e9e608c35bddcce78712";
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
