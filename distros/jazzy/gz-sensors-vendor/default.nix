
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, sdformat-vendor, xorg }:
buildRosPackage {
  pname = "ros-jazzy-gz-sensors-vendor";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sensors_vendor-release/archive/release/jazzy/gz_sensors_vendor/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "d8bf64fbe2fa808a1cdd20c5eedcca37e03445a36db857552ab5d5d1f4000ec0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sensors8 8.3.0

    Gazebo Sensors : Sensor models for simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
