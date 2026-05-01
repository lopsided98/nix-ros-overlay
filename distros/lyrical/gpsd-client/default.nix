
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-gpsd-client";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gpsd_client/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "0bd45caafba142d176680f6136b0f65eae33787f42986aee5dccba3c6503b5b5";
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
