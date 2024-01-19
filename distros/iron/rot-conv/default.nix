
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-iron-rot-conv";
  version = "1.0.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/iron/rot_conv/1.0.12-2.tar.gz";
    name = "1.0.12-2.tar.gz";
    sha256 = "37ee2755c1fa03056ff7210eb4b3e35a3a0f4062191537f8679470a5f4ae510d";
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
