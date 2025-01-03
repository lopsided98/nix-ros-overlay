
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nmea-msgs, python3Packages, rospy, rtcm-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntrip-client";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/noetic/ntrip_client/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "30f6cd7a33898bdf495fb1d57eddbd959769eb9e11c7fbf3ff5ec79fd12aaae8";
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
