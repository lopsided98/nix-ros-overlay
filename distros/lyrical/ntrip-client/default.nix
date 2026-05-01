
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, python3Packages, rclpy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ntrip-client";
  version = "1.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/lyrical/ntrip_client/1.4.1-3.tar.gz";
    name = "1.4.1-3.tar.gz";
    sha256 = "5f2adc95b4f01af58f35c684321fe848ee673bcdedd5f19ff984991fd400063b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs python3Packages.pyserial rclpy rtcm-msgs sensor-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
