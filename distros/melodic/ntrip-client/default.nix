
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros-msgs, nmea-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ntrip-client";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/melodic/ntrip_client/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "46f7a64d03163ae022bfee817e0400668b25902071e87b30740b921396da3ea9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mavros-msgs nmea-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''NTRIP client that will publish RTCM corrections to a ROS topic, and optionally subscribe to NMEA messages to send to an NTRIP server'';
    license = with lib.licenses; [ mit ];
  };
}
