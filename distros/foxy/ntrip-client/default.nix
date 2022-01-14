
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-msgs, nmea-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-ntrip-client";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/foxy/ntrip_client/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7f1b80d7344ff53499b652cb242a249f59d56140860a77cc6bda94fe41dbd66e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rclpy std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
