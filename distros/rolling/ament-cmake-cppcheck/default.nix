
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cppcheck";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cppcheck/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "be2f533c675e381f542533c43fa624cee8a313e21e793217531e48505cfe09d8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];

  meta = {
    description = "The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.";
    license = with lib.licenses; [ asl20 ];
  };
}
