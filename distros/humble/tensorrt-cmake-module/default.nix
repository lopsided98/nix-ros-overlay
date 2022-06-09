
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-humble-tensorrt-cmake-module";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/humble/tensorrt_cmake_module/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "e2a872466534fab60a991122816f3876aca8ab236d1280d5ddc1cc5840d9bb0d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find TensorRT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
