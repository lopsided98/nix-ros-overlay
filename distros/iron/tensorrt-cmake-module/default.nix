
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-iron-tensorrt-cmake-module";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tensorrt_cmake_module-release/archive/release/iron/tensorrt_cmake_module/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "5d1b49340d26d1a132e4580409cfbcff392376d76e75a2ecbe7ab68fb1f63b90";
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
