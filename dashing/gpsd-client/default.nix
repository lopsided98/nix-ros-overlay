
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp-components, gps-msgs, ament-cmake, gpsd, pkg-config, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-gpsd-client";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/gpsd_client/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0d2fe2ce52f10a1817af2fb79898855a5991467198a449e2b7f0481fd9f1fa1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components gps-msgs gpsd pkg-config rclcpp ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components gps-msgs gpsd pkg-config rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''connects to a GPSd server and broadcasts GPS fixes 
   using the NavSatFix message'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
