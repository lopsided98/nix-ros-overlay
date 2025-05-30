
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nmea-msgs, python3Packages, rclpy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ntrip-client";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntrip_client-release/archive/release/kilted/ntrip_client/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "a79ec1d1d281e93c6a89e148cfcede77d11c6804a1b20a3da309da537d94281a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ nmea-msgs python3Packages.pyserial rclpy rtcm-msgs sensor-msgs std-msgs ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
