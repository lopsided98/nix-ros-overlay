
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, urdf-launch }:
buildRosPackage {
  pname = "ros-iron-urdf-tutorial";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/iron/urdf_tutorial/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2eb0a1ec06bc05bc12c5a9a3793b0dbb114e4c77b14f91bbc1c5b04674967cf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ urdf-launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
