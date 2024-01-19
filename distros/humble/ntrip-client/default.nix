
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-msgs, nmea-msgs, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ntrip-client";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/humble/ntrip_client/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "7516989ca6c25bdc5db576845a4156554a32076b2ca71f0455e22502eedd2232";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rclpy std-msgs ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
