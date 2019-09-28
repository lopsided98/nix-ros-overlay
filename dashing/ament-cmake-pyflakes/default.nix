
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-pyflakes, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pyflakes";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pyflakes/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "854448b4809d4e8477d05694c10d091f9a4a453f9a7e6afb4bab5e762c1afeef";
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
