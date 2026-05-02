
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-cudnn-cmake-module";
  version = "0.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/rolling/cudnn_cmake_module/0.0.1-6.tar.gz";
    name = "0.0.1-6.tar.gz";
    sha256 = "3ce540a5dafaf0f6be7f2332e9b0ad8ba8bf133d4e52aef7f4cf3fb4001987ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports a CMake module to find cuDNN.";
    license = with lib.licenses; [ asl20 ];
  };
}
