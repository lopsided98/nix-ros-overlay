
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-gpsd-client";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gpsd_client/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "d6e86a3dfca6590300e385348b7bee223cb4482ed75c23121d54fede32a6d6cf";
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
