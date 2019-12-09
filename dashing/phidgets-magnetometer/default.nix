
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp-components, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-phidgets-magnetometer";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_magnetometer/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "21848f0d79f0f67eac5f1542f918df38d07390b761cfa14b308dcf9e7d777bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs phidgets-api rclcpp rclcpp-components ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components launch phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Magnetometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
