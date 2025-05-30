
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf-parser-plugin";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf_parser_plugin/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "f6e9dfd889ec7f1beb5dc2fbb5c8ecd1f055f97edc24115f93c0bb827a250221";
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
