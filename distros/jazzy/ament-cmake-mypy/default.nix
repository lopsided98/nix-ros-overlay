
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-mypy";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_mypy/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "02ba619041f05dc1f42c7f8cc8cef3ee7a9f92c31d839b44e4fadd0dfe2b19e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-mypy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-mypy ];

  meta = {
    description = "The CMake API for ament_mypy to perform static type analysis on python code
    with mypy.";
    license = with lib.licenses; [ asl20 ];
  };
}
