
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-gpsd-client";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/kilted/gpsd_client/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "c412b69bf3c8e82594bfcd2d7644693cb8385a732f9c6483d8c21ec1d2b0fb5b";
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
