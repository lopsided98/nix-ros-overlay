
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-pclint";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/ament_cmake_pclint/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "5a6800a322736700ed118afd3d4de5c0a5513166f6e805c5b7767c6bab4449d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = ''The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PCLint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
