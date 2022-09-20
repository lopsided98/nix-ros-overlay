
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, urdfdom-headers }:
buildRosPackage {
  pname = "ros-galactic-urdf-parser-plugin";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/galactic/urdf_parser_plugin/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "1f23ced3fcab94e1ec534d3e3d82977552ae74b8876022c97feb03c01fddfcf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
