
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, sdformat-vendor, xorg }:
buildRosPackage {
  pname = "ros-kilted-gz-sensors-vendor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sensors_vendor-release/archive/release/kilted/gz_sensors_vendor/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "9b2f51d65c315d00a2fe5312e8259f89b1de6eadeeb517443d1e5099ae872907";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sensors9 9.2.0

    Gazebo Sensors : Sensor models for simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
