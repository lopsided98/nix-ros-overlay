
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-rolling-rot-conv";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/rolling/rot_conv/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "4ab0513c64b78ab832f4e3750d764cbec73b7af6fb6d76db07a44957eaec45f0";
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
