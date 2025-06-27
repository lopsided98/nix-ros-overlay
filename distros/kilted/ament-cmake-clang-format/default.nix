
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-clang-format";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_clang_format/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "1fdc0766a60dbd6e70799cbf9ecef48b0dbb22a56db5e24c7132a7299692034a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-format ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-format ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_clang_format to lint C / C++ code using clang format.";
    license = with lib.licenses; [ asl20 ];
  };
}
