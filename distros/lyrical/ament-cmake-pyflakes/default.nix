
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-pyflakes";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_cmake_pyflakes/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "a8b478a58cf54c81b10d4ca55b85810a4e0e549184c01e49b109e0d1a17e1c0e";
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
