
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-tensorrt-cmake-module";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/rolling/tensorrt_cmake_module/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "2f16d2cc3bdb67c9d502870bd6d6ae946cd88e5e39da45ccfb4fcbe6dc48ecec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find TensorRT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
