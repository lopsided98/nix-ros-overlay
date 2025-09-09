
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-pclint";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_pclint/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "80bf4de33a353c3a7b6c211ae18ceaabe7e4f67179ca6c2b4d81b6d5906988ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = "The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PC-lint.";
    license = with lib.licenses; [ asl20 ];
  };
}
