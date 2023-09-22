
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-lint-cmake";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_lint_cmake/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "5834082fb427ee5d4c0252e0ea63fb334fc104bf99f78ab840060ac3a0774e91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ament-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-cmake ];

  meta = {
    description = ''The CMake API for ament_lint_cmake to lint CMake code using cmakelint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
