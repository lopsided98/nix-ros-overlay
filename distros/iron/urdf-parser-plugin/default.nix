
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-iron-urdf-parser-plugin";
  version = "2.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/iron/urdf_parser_plugin/2.8.2-3.tar.gz";
    name = "2.8.2-3.tar.gz";
    sha256 = "73e610a5048626063fe5c90c5b4c751771c877d19eab2f57db30bb771b0c41c8";
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
