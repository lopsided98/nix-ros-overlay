
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake }:
buildRosPackage {
  pname = "ros-rolling-gz-cmake-vendor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake_vendor-release/archive/release/rolling/gz_cmake_vendor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9b548ccd4309b2bbe9f54cb87d739f0ae68b5c555759475fd32057578b88042a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-cmake4 4.1.0

    Gazebo CMake : CMake Modules for Gazebo Projects";
    license = with lib.licenses; [ asl20 ];
  };
}
