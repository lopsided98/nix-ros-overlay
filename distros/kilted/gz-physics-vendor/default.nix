
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, bullet, cmake, eigen, gbenchmark, gz-cmake-vendor, gz-common-vendor, gz-dartsim-vendor, gz-math-vendor, gz-plugin-vendor, gz-utils-vendor, sdformat-vendor }:
buildRosPackage {
  pname = "ros-kilted-gz-physics-vendor";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_physics_vendor-release/archive/release/kilted/gz_physics_vendor/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "d980bce92934466e21cffa9ae4d676af4d67e238aea1e35a41b9de1a4b043562";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ bullet eigen gbenchmark gz-cmake-vendor gz-common-vendor gz-dartsim-vendor gz-math-vendor gz-plugin-vendor gz-utils-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-physics8 8.1.0

    Gazebo Physics : Physics classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
