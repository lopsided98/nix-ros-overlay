
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-clang-format, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-clang-format";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_clang_format/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "4bb4d3b0321a6e57b5819586c7e289a79967263362959a098c3fe945d624276e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-clang-format ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_clang_format to lint C / C++ code using clang format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
