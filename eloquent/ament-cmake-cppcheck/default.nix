
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cppcheck, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-cppcheck";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_cppcheck/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "768b3c363bbf202e75d75deef51f09c5ae01c32f0b8843cdfa72c50d886322c0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-core ament-cppcheck ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.'';
    license = with lib.licenses; [ asl20 ];
  };
}
