
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-flake8";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_flake8/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "bb7eeb96cb967980c8a6c52ab33626bb5a10e11464567b61790bd64c16d65356";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-flake8 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-flake8 ];

  meta = {
    description = "The CMake API for ament_flake8 to check code syntax and style conventions
    with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}
