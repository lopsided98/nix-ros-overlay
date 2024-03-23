
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nmea-msgs, rospy, rtcm-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntrip-client";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/noetic/ntrip_client/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "71f1a3e8b903a369fa3259407a5096f173edf0058e2b6ce3c452188a540b7031";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nmea-msgs rospy rtcm-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server";
    license = with lib.licenses; [ mit ];
  };
}
