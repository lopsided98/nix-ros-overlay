
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-kilted-rot-conv";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/kilted/rot_conv/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "c638fcf355f20acbb0b77a2537e0dc0c5d96d83d4ac843ee148870adc8c25320";
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
