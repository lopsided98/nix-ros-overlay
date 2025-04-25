
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, python3Packages, rclpy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ntrip-client";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/jazzy/ntrip_client/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "3046bf94b6bc941ae86b2384e004f3326e7c1a0bbff75b236ccfef2637f0cf55";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs python3Packages.pyserial rclpy rtcm-msgs sensor-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
