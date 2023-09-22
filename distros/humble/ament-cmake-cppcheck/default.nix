
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-cppcheck";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_cppcheck/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "ed649b00cf80706817142dc7bf039e35139c8f2aeb44e4e970592a9cb802bebf";
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
