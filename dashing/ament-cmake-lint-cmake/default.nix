
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-lint-cmake, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-lint-cmake";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_lint_cmake/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "ff76445765027708ac922b194ffcae1c5b63c0ca3bd2a041d638618c7a618128";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-lint-cmake ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_lint_cmake to lint CMake code using cmakelint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
