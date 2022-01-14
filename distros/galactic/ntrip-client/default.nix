
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-msgs, nmea-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ntrip-client";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/galactic/ntrip_client/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2a56f3a461beb8cd3700cb13dc174ff2e2e43cbec730619e6c1279f9339ffb91";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rclpy std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
