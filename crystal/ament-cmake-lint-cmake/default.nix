
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-lint-cmake, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-lint-cmake";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_lint_cmake/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "28560ee58db56a7792eecab075a151c98d6b6c442c96c63dd82104d5ef8dcdec";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-lint-cmake ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_lint_cmake to lint CMake code using cmakelint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
