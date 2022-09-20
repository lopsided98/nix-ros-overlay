
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pyflakes";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pyflakes/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "ba6bd60624118e2e064f92dc51e080b638f885f5b93f99996783b95455edc3d3";
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
