
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-tidy, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-clang-tidy";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_clang_tidy/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "048f30b8fcbe848467adb02e0121a1589147e71984bade41f8882e33866d3c62";
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
