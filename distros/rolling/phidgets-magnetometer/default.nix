
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-magnetometer";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_magnetometer/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "6791e50528f02decd01ae11979c23fea174be55c3ad32243451afb2b8aadfbd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Magnetometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
