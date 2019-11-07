
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-clang-tidy, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-clang-tidy";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_clang_tidy/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "bf4fff69f984ef4feb667e83592e70c7d4bcd68443ef8b0411d44f4c61a0d73b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-clang-tidy ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
