
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-kilted-eigen3-cmake-module";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/kilted/eigen3_cmake_module/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "e60bccc31207515f77e604479f1bd594e5c55c5e74e8453e94a95f16294ac773";
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
