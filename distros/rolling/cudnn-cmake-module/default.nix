
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-cudnn-cmake-module";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/rolling/cudnn_cmake_module/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "0c550bff25b7d7ada6b8c88151b4eb80d216758070a82f9c83c49da2649fb308";
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
