
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, urdfdom-headers }:
buildRosPackage {
  pname = "ros-humble-urdf-parser-plugin";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/humble/urdf_parser_plugin/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "e01d18af775f582794323bcf6f05abde3c5858759383b23a01817a95b6ccbf08";
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
