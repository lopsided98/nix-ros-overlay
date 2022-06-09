
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-msgs, nmea-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ntrip-client";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/humble/ntrip_client/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "2c04e04e206989bb7e5970fb590570feb5844971948ef07258535c7ebd7b5eb7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rclpy std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
