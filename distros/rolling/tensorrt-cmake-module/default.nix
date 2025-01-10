
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-rolling-tensorrt-cmake-module";
  version = "0.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/rolling/tensorrt_cmake_module/0.0.4-2.tar.gz";
    name = "0.0.4-2.tar.gz";
    sha256 = "85fdf9bf8881e8127a2dac932def3fdc00b085b516dc186d1ca5abbfc77acbb5";
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
