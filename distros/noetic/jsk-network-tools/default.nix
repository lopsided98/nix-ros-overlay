
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rospy, rostest, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-network-tools";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_network_tools/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "be176b4c16b6d90c6cb2ebd16b88c760d981528bcfde28f9efb44b3870f6d055";
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
