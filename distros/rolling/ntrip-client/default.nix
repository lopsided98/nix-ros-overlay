
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, rclpy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntrip-client";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/rolling/ntrip_client/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "62f4da07cb2c0205e28df54753626368755df54ee68968ce5401b9d3977e7ed3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs rclpy rtcm-msgs std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
