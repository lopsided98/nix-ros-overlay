
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-jazzy-eigen3-cmake-module";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/jazzy/eigen3_cmake_module/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "b8cb77a5024edf07e5a6c2831873372f49de3ef3bf806696765709fd6f469cf2";
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
