
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros-msgs, nmea-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntrip-client";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/noetic/ntrip_client/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "cf1cf0459dbbd26305989ef21308f7a52c57e6842ab07e651530c8096148fefc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
