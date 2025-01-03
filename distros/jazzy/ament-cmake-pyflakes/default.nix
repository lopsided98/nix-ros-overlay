
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pyflakes }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pyflakes";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_pyflakes/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "24531d398f0e4e3e4d7e7e8ce57048764a86209125ccaed80316c35202f4068a";
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
