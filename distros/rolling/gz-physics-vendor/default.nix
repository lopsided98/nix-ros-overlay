
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, bullet, cmake, eigen, gbenchmark, gz-cmake-vendor, gz-common-vendor, gz-dartsim-vendor, gz-math-vendor, gz-plugin-vendor, gz-utils-vendor, sdformat-vendor }:
buildRosPackage {
  pname = "ros-rolling-gz-physics-vendor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_physics_vendor-release/archive/release/rolling/gz_physics_vendor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "954167a052b611c5cf5027b4152a379179c836612f9749a69366279cd8cfc06d";
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
