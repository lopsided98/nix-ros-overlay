
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, sdformat-vendor, xorg }:
buildRosPackage {
  pname = "ros-lyrical-gz-sensors-vendor";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sensors_vendor-release/archive/release/lyrical/gz_sensors_vendor/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "9d35ea0243062d06c57f905bc6caab3d1ec295a0f06386886ec32a58d77e5432";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sensors 10.1.1

    Gazebo Sensors : Sensor models for simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
