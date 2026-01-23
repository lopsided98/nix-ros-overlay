
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-urdf-parser-plugin";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/rolling/urdf_parser_plugin/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "60672824331987c227ea90ab3476e8453d108e8ccdbe96d3e4853ee29a855be8";
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
