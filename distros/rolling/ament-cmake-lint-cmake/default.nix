
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-lint-cmake";
  version = "0.20.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_lint_cmake/0.20.5-3.tar.gz";
    name = "0.20.5-3.tar.gz";
    sha256 = "69b4ed875124ed07e53ba9f6c0ac08aad01c9c54a62ec6c8acc3bb07f5199b83";
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
