
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-urdf-parser-plugin";
  version = "1.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/noetic/urdf_parser_plugin/1.13.4-1.tar.gz";
    name = "1.13.4-1.tar.gz";
    sha256 = "b3c2cefdd84e23420c808386abbd86ea32b85944e16470d49bf4db314c4c4351";
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
