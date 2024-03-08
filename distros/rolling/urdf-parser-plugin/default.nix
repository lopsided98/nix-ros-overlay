
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf-parser-plugin";
  version = "2.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf_parser_plugin/2.10.0-2.tar.gz";
    name = "2.10.0-2.tar.gz";
    sha256 = "9ecad186d9130aa9f8e8ef27cfac715957ca526fcc44931c2c858241b93c939c";
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
