
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-rot-conv";
  version = "1.0.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/humble/rot_conv/1.0.11-2.tar.gz";
    name = "1.0.11-2.tar.gz";
    sha256 = "2c41af103e6d85937bac5d157dfffd6d8442edd7c48984bc54a97f8b49278493";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''A collection of functions that address common computations and numerical handling of rotations in 3D Euclidean space'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
