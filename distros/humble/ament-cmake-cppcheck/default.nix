
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-cppcheck";
  version = "0.12.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_cppcheck/0.12.12-1.tar.gz";
    name = "0.12.12-1.tar.gz";
    sha256 = "4ea27eb62ea773179fbb6c0bc779e6a6c40593a98ed2c1b5aa9dafd6f76cad79";
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
