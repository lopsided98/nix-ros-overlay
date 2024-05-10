
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-lint-cmake";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_lint_cmake/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "a9a7b3d61d5ef08c48714ee20f0e62f766765e478ee1f0cd5eb43fbcb91ab4a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ament-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-cmake ];

  meta = {
    description = "The CMake API for ament_lint_cmake to lint CMake code using cmakelint.";
    license = with lib.licenses; [ asl20 ];
  };
}
