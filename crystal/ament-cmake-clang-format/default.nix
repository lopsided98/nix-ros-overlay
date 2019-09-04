
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-clang-format";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_clang_format/0.6.4-0.tar.gz;
    sha256 = "31b14d3d99e6605e48b154a34ed51adeef553da71755edcbddcc3b79a1afcc70";
  };

  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_clang_format to lint C / C++ code using clang format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
