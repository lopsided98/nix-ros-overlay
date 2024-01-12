
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf-parser-plugin";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf_parser_plugin/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "0000d86231702fa7cfa940bb1a44075d9dfa6c2b1eb174afe30e17f731955a23";
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
