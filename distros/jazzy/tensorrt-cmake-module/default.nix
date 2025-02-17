
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-tensorrt-cmake-module";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/jazzy/tensorrt_cmake_module/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "7e23083054fac16c406d13fd6565edad159e58a4fdd48b84d75ed345e6fc5c0d";
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
