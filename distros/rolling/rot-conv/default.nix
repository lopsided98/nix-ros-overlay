
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rot-conv";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/rolling/rot_conv/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d5a87a643880d7d31d5f1f5856db8d53c9bcb0587c468de94143fcc7a9112417";
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
