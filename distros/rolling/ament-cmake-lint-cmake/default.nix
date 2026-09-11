
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-lint-cmake";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_lint_cmake/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "97582ecd06a54085f7758df3599ba72870ccfa4ed672258de5e9d316e0c02d17";
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
