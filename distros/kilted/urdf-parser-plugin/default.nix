
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-urdf-parser-plugin";
  version = "2.12.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/kilted/urdf_parser_plugin/2.12.2-2.tar.gz";
    name = "2.12.2-2.tar.gz";
    sha256 = "e168a8e475a39f59c462d87c58e2471918ca1cfa21ac5403335ca7315c8d0b7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package contains a C++ base class for URDF parsers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
