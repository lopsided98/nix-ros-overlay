
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-gz-cmake-vendor";
  version = "0.4.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake_vendor-release/archive/release/lyrical/gz_cmake_vendor/0.4.4-3.tar.gz";
    name = "0.4.4-3.tar.gz";
    sha256 = "dbc2b7f40abe60be546c6fe6e1fed307282095a37bd014b0fceeaff098e55470";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake pkg-config ];

  meta = {
    description = "Vendor package for: gz-cmake 5.1.0

    Gazebo CMake : CMake Modules for Gazebo Projects";
    license = with lib.licenses; [ asl20 ];
  };
}
