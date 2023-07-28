
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pyflakes";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pyflakes/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "c153a6a12621dbbd3f7c79cda2341f7446fc8f99526813ba3e766f6d3f971fac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pyflakes ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pyflakes ];

  meta = {
    description = ''The CMake API for ament_pyflakes to check code using pyflakes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
