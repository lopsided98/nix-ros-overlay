
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-cmake-lint-cmake, ament-cppcheck, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-cppcheck";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_cppcheck/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "79358101cd70cc5ce61d96cc451582c1d6402e7138b81ee858087416525be7e9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-cppcheck ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.'';
    license = with lib.licenses; [ asl20 ];
  };
}
