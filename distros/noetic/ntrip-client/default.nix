
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nmea-msgs, python3Packages, rospy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntrip-client";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/noetic/ntrip_client/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "4e2ed7055e2453b25e49634f5166c260c7d6d5829254f877966ae83f606deec3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nmea-msgs python3Packages.pyserial rospy rtcm-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
