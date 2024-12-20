
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rospy, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-network-tools";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_network_tools/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "65230a9dd89258b2c508d781423828210c2881334705bd94412280b55c2cca46";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure message-runtime roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "jsk_network_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
