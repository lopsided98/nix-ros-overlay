
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cppcheck";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cppcheck/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "7b92303d8a78e314e7a9d499cdcba3a4addca815b1bc1f159751af504181d7e0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];

  meta = {
    description = ''The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.'';
    license = with lib.licenses; [ asl20 ];
  };
}
