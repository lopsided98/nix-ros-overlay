
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-urdf-parser-plugin";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/kilted/urdf_parser_plugin/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "f69314643b905a38e2db015e32ad6e4d3672f27ef93d80ed9e45adda6e23f9b2";
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
