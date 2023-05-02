
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-clang-format";
  version = "0.12.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_clang_format/0.12.6-1.tar.gz";
    name = "0.12.6-1.tar.gz";
    sha256 = "1155c9a7b89e70929c60b8d37aabcd6c3011f33a1d62868c76e53acd9edfe5a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-format ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-format ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_clang_format to lint C / C++ code using clang format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
