
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rot-conv";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/rolling/rot_conv/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "a9a43be54c7e416fd0bd21c7e46ca58fcd96d12610e4a4f1d99bb0b3173d8da1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "A collection of functions that address common computations and numerical handling of rotations in 3D Euclidean space";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
