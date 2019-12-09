
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-pclint, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pclint";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pclint/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "229f3da6992f9b1a2de38ec0d3c61d95921027146a1b459800e5321a65e0f976";
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
