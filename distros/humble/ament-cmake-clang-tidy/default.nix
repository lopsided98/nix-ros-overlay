
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-tidy, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-clang-tidy";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_clang_tidy/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "099ac017cc84cce919b7d9cf0bbb67fc79fcfe80996ff5efc62f9ca5376e947c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-tidy ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-tidy ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.";
    license = with lib.licenses; [ asl20 ];
  };
}
