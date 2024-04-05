
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-clang-format";
  version = "0.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_clang_format/0.16.4-1.tar.gz";
    name = "0.16.4-1.tar.gz";
    sha256 = "a89bef76932eabedbaa6dd8c8a79b65511613a51df43ad1a5e23662fb6c34c16";
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
