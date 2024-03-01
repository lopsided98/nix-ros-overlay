
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, rclpy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ntrip-client";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/iron/ntrip_client/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "4dafdea6fda2a3c0e1a037e8059f00de2e80c0dd314bc63d340ee9087e5365fb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs rclpy rtcm-msgs std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
