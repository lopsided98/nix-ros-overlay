
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, rclpy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ntrip-client";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/humble/ntrip_client/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "eb301449af47f021d6635c603c72f615fe5a6f42318b882410b783bec1cd3c9f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs rclpy rtcm-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
