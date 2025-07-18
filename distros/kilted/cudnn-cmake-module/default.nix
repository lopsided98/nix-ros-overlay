
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-kilted-cudnn-cmake-module";
  version = "0.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/kilted/cudnn_cmake_module/0.0.1-6.tar.gz";
    name = "0.0.1-6.tar.gz";
    sha256 = "9ebbeb686e277dd20f2534be9284fea632208a473d0191b744a7a456345bc865";
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
