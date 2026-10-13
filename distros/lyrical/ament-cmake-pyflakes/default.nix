
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-pyflakes";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cmake_pyflakes/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "2a0b25220a0946fea5b77bfdbcd81f2ac4eaf7c9b56d7b558259dfca31378d5e";
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
