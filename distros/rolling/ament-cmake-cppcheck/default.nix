
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cppcheck";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cppcheck/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "14ce13b46675219caa02bbc5ae78413b58fefbe6068c3f2acf58090522896c04";
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
