
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-lyrical-rot-conv";
  version = "1.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rot_conv_lib-release/archive/release/lyrical/rot_conv/1.1.0-5.tar.gz";
    name = "1.1.0-5.tar.gz";
    sha256 = "1c3d137536005de7e1543894808f64bfe7953e39f07229f739443bcb6f83bd25";
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
