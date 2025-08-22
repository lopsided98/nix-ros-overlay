
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-flake8";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_flake8/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "b83840d07bf2f38e3a3a3c650e4556d3aefd08a28b53c37674f26d89aba18b16";
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
