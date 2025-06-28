
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-rendering-vendor, gz-tools-vendor, gz-transport-vendor, sdformat-vendor, xorg }:
buildRosPackage {
  pname = "ros-kilted-gz-sensors-vendor";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_sensors_vendor-release/archive/release/kilted/gz_sensors_vendor/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "6ad0684533dc8a85427aa35ab461cc2cf0cb58918a106aa71f4dbe38f7fef2e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint xorg.xorgserver ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-rendering-vendor gz-tools-vendor gz-transport-vendor sdformat-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-sensors9 9.1.0

    Gazebo Sensors : Sensor models for simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
