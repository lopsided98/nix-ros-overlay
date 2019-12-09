
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-pclint, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-pclint";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_pclint/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "89f5ba8c6f6917e479fae3548c1595fd255a839c00564dd79c689f6c62cb7cbc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PCLint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
