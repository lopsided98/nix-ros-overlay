
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rospy, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-network-tools";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_network_tools/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "b18afcbe1ba6ad84f264c98376c42e3c2aa5d6782ce1c2b57b87f54773ff2493";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_network_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
