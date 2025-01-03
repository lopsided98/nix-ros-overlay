
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-rolling-eigen3-cmake-module";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigen3_cmake_module-release/archive/release/rolling/eigen3_cmake_module/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0c7491684e6e5c5529daa2ce149cfd85abe4ddd6d3fc0ae3318d4c1c4c21d95e";
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
