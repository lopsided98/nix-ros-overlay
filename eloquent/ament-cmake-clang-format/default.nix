
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-clang-format, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-clang-format";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_clang_format/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "531057528aebd670187625f5b6d60718aef6ebb1bfb22233b92b70c5cec9f227";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-clang-format ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_clang_format to lint C / C++ code using clang format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
