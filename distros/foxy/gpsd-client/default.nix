
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gpsd, pkg-config, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-gpsd-client";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/foxy/gpsd_client/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "5ad3e4aee1715265e1040c431571e00a89dacea7e1946c2eb0df6c81dda57f94";
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
