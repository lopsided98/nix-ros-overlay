
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-urdf-parser-plugin";
  version = "2.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/jazzy/urdf_parser_plugin/2.10.0-3.tar.gz";
    name = "2.10.0-3.tar.gz";
    sha256 = "a036e6ecf0fa77b2deff7a8dee8612ba97c24c49c39f321549cb4d6e1c1b09f0";
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
