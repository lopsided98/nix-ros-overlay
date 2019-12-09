
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, diagnostic-msgs, dynamic-reconfigure, std-msgs, catkin, rospy, roscpp, message-runtime, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-jsk-network-tools";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_network_tools/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "da8c911f4c5d111716441d6cbbc32b9994a7e83d22ab452a5aab8267742e45f8";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs dynamic-reconfigure std-msgs rospy roscpp message-generation rostest diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-msgs dynamic-reconfigure std-msgs rospy roscpp message-runtime diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_network_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
