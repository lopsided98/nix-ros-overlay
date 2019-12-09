
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp-components, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-magnetometer";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_magnetometer/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "6e5b2633c025a8352d767470b550833859b05e9986c583d03a52984d41bb67ca";
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
