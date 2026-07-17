
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-gpsd-client";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gpsd_client/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "eea96ae04e4df79357f2adcf0f2db9b80b8ccd3bb7498c997c47678f42daaf35";
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
