
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-urdf-parser-plugin";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/melodic/urdf_parser_plugin/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "292e3a8dd2aa7672ef77ca49f1ef9ebc753f521c524f5fa6b4cfea324a2be13f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
