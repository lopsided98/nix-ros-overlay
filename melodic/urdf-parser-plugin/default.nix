
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdfdom-headers, catkin }:
buildRosPackage {
  pname = "ros-melodic-urdf-parser-plugin";
  version = "1.13.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/melodic/urdf_parser_plugin/1.13.1-0.tar.gz;
    sha256 = "7031baf19ed479dcc35455fc5090a740ccc28592c8fd565154ea6556aa80f747";
  };

  buildInputs = [ urdfdom-headers ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
