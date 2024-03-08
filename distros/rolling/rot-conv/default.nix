
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rot-conv";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/rolling/rot_conv/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "af9b11611dd34e2aa930dbc2956457feee916b69f61d431e017496528182daa3";
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
