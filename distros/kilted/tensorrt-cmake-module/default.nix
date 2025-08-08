
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-kilted-tensorrt-cmake-module";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/kilted/tensorrt_cmake_module/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "c8f410f68ae5ab26e2e6803fa92ace155b3cf825b73d06706ff042d6c651dc85";
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
