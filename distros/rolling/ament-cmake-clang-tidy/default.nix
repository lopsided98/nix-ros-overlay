
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-tidy, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-clang-tidy";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_clang_tidy/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "9bc4751419f53e0c4726b38ed2d2d2aee78ce4bdfed6d62a3abe73c5b15ed430";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-tidy ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-tidy ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
