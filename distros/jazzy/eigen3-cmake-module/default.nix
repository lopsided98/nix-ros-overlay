
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-jazzy-eigen3-cmake-module";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/jazzy/eigen3_cmake_module/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "244f4369b354e3acd1f31bd1ad3a99d0f1f3bfe3e3f338bc01fd89b31701920b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports a custom CMake module to find Eigen3.";
    license = with lib.licenses; [ asl20 ];
  };
}
