
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-gpsd-client";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/gpsd_client/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "ad690e376e4e9afe49d5c13165048ab98c5f3b03889c34cb8011283526a34e5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gpsd pkg-config rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
