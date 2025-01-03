
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-tensorrt-cmake-module";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/jazzy/tensorrt_cmake_module/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "456bd190acc6509fc67bea982d24d58b6ae7a2000d00e01827873c63e14beee6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports a CMake module to find TensorRT.";
    license = with lib.licenses; [ asl20 ];
  };
}
