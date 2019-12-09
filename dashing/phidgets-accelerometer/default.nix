
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp-components, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-phidgets-accelerometer";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_accelerometer/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "32b61cba5750fd07baa2d0a08e43b7e9fc3f642091c5d2cfdb48487beae87733";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs phidgets-api rclcpp rclcpp-components ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components launch phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Accelerometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
