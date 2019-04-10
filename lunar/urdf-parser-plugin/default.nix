
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdfdom-headers, catkin }:
buildRosPackage {
  pname = "ros-lunar-urdf-parser-plugin";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/lunar/urdf_parser_plugin/1.12.12-0.tar.gz;
    sha256 = "de904c290611539796c1ede9d1aad745d34752bb8bb912127b25c7038cb8820f";
  };

  buildInputs = [ urdfdom-headers ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    #license = lib.licenses.BSD;
  };
}
