
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-gpsd-client";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/gpsd_client/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "feed613ec35a496e494ea4ba6ecd77950ad8fc7768833107c0deabf201ef7a22";
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
