
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-lint-cmake";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_lint_cmake/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "48a4bd0aeda2d4d4007060aebe051630c5afc278468bdfddad7fb1b0f2fabcb8";
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
