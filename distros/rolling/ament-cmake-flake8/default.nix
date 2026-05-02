
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-flake8";
  version = "0.20.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_flake8/0.20.5-3.tar.gz";
    name = "0.20.5-3.tar.gz";
    sha256 = "82918ad976502eb8d98c35dfc50da7553d3014ee946dffb54d3c739e9999b7b8";
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
