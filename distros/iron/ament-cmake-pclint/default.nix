
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-pclint";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_pclint/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "890dd36741a1307b11b8df857a5842b42111b1c2ec6ce9b0c0ac8bc2c85ab3c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = ''The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PC-lint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
