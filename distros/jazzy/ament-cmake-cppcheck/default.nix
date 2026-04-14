
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-cppcheck";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_cppcheck/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "8897382666c39717070917a61612edc77b8b5866133659428de9efd2bc71db1d";
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
