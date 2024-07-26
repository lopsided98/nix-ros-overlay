
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-flake8";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_flake8/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "7ba7aad22660b436249db383d3f9c10fc7b8acf62f8a1441c861803318f65ecb";
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
