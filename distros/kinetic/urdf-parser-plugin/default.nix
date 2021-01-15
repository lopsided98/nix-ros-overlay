
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kinetic-urdf-parser-plugin";
  version = "1.12.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/kinetic/urdf_parser_plugin/1.12.12-0.tar.gz";
    name = "1.12.12-0.tar.gz";
    sha256 = "8c3407882b0c5e3dd1ad56ec5c1321c2db117c6eccdf49f93d1c4d29357fdbcf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
