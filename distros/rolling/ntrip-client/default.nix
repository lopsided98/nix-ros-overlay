
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, rclpy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntrip-client";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/rolling/ntrip_client/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "96a7b0b7f01b7086b4b4f92e60fbf2a637f565f393a9fbf99e617c771fe28c03";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs rclpy rtcm-msgs std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
