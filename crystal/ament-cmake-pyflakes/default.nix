
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-pyflakes, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-pyflakes";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_pyflakes/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "d0a1cae175c33fa6c188f724bbf7aaadbdc0f2fbb250c10c7248d65567ac31e0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-pyflakes ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pyflakes to check code using pyflakes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
