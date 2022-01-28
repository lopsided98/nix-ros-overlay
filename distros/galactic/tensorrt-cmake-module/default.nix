
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-galactic-tensorrt-cmake-module";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tier4/tensorrt_cmake_module-release/archive/release/galactic/tensorrt_cmake_module/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "44824ade1643effdcf300c76f015495c745fa2a715f8673d15e985aacdf1ed7d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find TensorRT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
