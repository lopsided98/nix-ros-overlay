
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pyflakes";
  version = "0.20.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pyflakes/0.20.1-1.tar.gz";
    name = "0.20.1-1.tar.gz";
    sha256 = "9f83e8f361c5fba55de254c255b5861f4e97f62d59260b722290c5b6a2fc8162";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pyflakes ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pyflakes ];

  meta = {
    description = "The CMake API for ament_pyflakes to check code using pyflakes.";
    license = with lib.licenses; [ asl20 ];
  };
}
