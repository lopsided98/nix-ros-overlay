
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, gz-utils-vendor, sdformat-vendor, xorg }:
buildRosPackage {
  pname = "ros-rolling-gz-sensors-vendor";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sensors_vendor-release/archive/release/rolling/gz_sensors_vendor/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "3c9a88dc56513665ec460a01138ab0bbb171cd0a0fc7d7c6abc8369a7b34479a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor gz-utils-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sensors 11.0.0

    Gazebo Sensors : Sensor models for simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
