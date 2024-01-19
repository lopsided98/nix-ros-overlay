
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-msgs, nmea-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ntrip-client";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/iron/ntrip_client/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "32677b4e3a128907d37e8b46c168fa133be10b871dd7bb1985729c59c418101a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rclpy std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
