
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-gpsd-client";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gpsd_client/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a2e62e930805532e5fd9e890fb20519988ab0b6987c7edab41cc30a098799ec2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gpsd pkg-config rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
