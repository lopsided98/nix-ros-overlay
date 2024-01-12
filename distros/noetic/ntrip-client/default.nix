
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros-msgs, nmea-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ntrip-client";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/ntrip_client-release/archive/release/noetic/ntrip_client/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0066bb6efb9cfa6af71bb37d32f95c2daef51fd4f16aab44ba186bf29b9d3e77";
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
