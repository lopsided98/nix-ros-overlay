
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-pyflakes";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_pyflakes/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "06adee6440763431a49cca08abe4d27058e0c56372995c8a9979c21c292084d9";
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
