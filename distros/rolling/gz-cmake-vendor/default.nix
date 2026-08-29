
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-gz-cmake-vendor";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake_vendor-release/archive/release/rolling/gz_cmake_vendor/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "669c5feda6764f08a12f1b378615ee62ea100aac889788cca256c5f4803c273e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-cmake 6.0.0

    Gazebo CMake : CMake Modules for Gazebo Projects";
    license = with lib.licenses; [ asl20 ];
  };
}
