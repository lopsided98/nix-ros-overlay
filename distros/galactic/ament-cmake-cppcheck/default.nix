
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-cppcheck";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_cmake_cppcheck/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "9eadb499d992cd23d146b60cec3e6534e7e459dcc29c25150c139a4126689397";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.'';
    license = with lib.licenses; [ asl20 ];
  };
}
