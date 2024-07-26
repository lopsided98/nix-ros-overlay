
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-lint-cmake";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_lint_cmake/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "bc36c978a1f295d207fa35e159844bcb6bd1e6bbe0bbd76540d557ec06677b0b";
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
