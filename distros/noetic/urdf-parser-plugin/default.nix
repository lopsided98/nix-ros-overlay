
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-urdf-parser-plugin";
  version = "1.13.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/noetic/urdf_parser_plugin/1.13.3-1.tar.gz";
    name = "1.13.3-1.tar.gz";
    sha256 = "e7e6fcf185ebec3a04897bf7fbfd97342c56155829ee58a1eb4a012dd75d072a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a C++ base class for URDF parsers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
