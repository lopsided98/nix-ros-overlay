
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-clang-format";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_clang_format/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "35ae77f18f2422b384af3858ddf23b3ad4c9944cbdd3d5c18e6211fef8a75fb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-format ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-format ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_clang_format to lint C / C++ code using clang format.";
    license = with lib.licenses; [ asl20 ];
  };
}
