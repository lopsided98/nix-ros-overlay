
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, bullet, eigen, gbenchmark, gz-cmake-vendor, gz-common-vendor, gz-dartsim-vendor, gz-math-vendor, gz-plugin-vendor, gz-utils-vendor, sdformat-vendor }:
buildRosPackage {
  pname = "ros-jazzy-gz-physics-vendor";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_physics_vendor-release/archive/release/jazzy/gz_physics_vendor/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "9da774df4b3ed2c4f59f0e208d28958500026b453acdd658d564e5a2b94b8e6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ bullet eigen gbenchmark gz-cmake-vendor gz-common-vendor gz-dartsim-vendor gz-math-vendor gz-plugin-vendor gz-utils-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-physics7 7.3.0

    Gazebo Physics : Physics classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
