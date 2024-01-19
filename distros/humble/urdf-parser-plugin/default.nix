
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-humble-urdf-parser-plugin";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/humble/urdf_parser_plugin/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "e02835634341dfbfc9221ec0bd9aadebca530b12d810f3de1e98eecf0989d0ab";
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
