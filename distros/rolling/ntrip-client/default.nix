
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, python3Packages, rclpy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntrip-client";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/rolling/ntrip_client/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "f43a06961d7abf3fc53e85f2e48f34e64b79603d9b61a7f10d1f4e3d6bab33c8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs python3Packages.pyserial rclpy rtcm-msgs sensor-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
