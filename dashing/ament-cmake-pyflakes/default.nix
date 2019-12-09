
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pyflakes";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pyflakes/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "ed98aeea9d559202b597bbcc40b3d4264b92fc3dae2dce0e9950dc371ca95a39";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-pyflakes ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_pyflakes to check code using pyflakes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
