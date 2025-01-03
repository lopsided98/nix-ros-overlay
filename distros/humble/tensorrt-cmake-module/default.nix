
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-humble-tensorrt-cmake-module";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/humble/tensorrt_cmake_module/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "ba6189d92530352b5be9abe5a0c9707ae0335e2da459d5f6e6d6a380f0503305";
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
