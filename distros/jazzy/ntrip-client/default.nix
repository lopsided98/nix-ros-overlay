
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, rclpy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ntrip-client";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/jazzy/ntrip_client/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "44cea2b77e92e8e3d9eda816c1124c4e33ef67969e82e8e9dbfa33377c806331";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs rclpy rtcm-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
