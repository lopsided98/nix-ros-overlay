
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-gz-cmake-vendor";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake_vendor-release/archive/release/kilted/gz_cmake_vendor/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "b5d7dc4916a7c602ede1bce1b065fb6510448ee5a86909b635f852ff9a6d5e0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-cmake4 4.1.1

    Gazebo CMake : CMake Modules for Gazebo Projects";
    license = with lib.licenses; [ asl20 ];
  };
}
