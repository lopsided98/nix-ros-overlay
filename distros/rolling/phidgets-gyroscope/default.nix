
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-gyroscope";
  version = "2.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_gyroscope/2.4.0-2.tar.gz";
    name = "2.4.0-2.tar.gz";
    sha256 = "6ab4027e5ed11e01122905f5b9278a92dd6f9274f3d44c27b8d75b2fe93e43ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Gyroscope devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
