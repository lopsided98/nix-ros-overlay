
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, class-loader, catkin, urdf-parser-plugin, urdfdom-headers, urdf }:
buildRosPackage {
  pname = "ros-kinetic-collada-parser";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/collada_urdf-release/archive/release/kinetic/collada_parser/1.12.12-0.tar.gz;
    sha256 = "ad8bdbccc6bf7db2767cc7f321ecb687db4d8467761f856e803e99d2164c9ef7";
  };

  buildInputs = [ rosconsole class-loader urdf-parser-plugin urdfdom-headers urdf ];
  propagatedBuildInputs = [ class-loader urdf rosconsole urdf-parser-plugin ];
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
