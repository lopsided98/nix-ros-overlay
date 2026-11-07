
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-tidy, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-clang-tidy";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_clang_tidy/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "e2dd32a3d71d84640cd078efbf53e60b45a96d6a28d179b27da14cac8d1dd170";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-tidy ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-tidy ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.";
    license = with lib.licenses; [ asl20 ];
  };
}
