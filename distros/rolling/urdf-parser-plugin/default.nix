
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf-parser-plugin";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf_parser_plugin/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "92ceaddbf33595ef678d01d020f53f2ac1e817da41ffdff06378616f13dd8866";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This package contains a C++ base class for URDF parsers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
