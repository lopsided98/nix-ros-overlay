
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, rostest, message-generation, message-runtime, rospy, std-msgs, diagnostic-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-jsk-network-tools";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_network_tools/2.2.10-0.tar.gz;
    sha256 = "da8c911f4c5d111716441d6cbbc32b9994a7e83d22ab452a5aab8267742e45f8";
  };

  buildInputs = [ sensor-msgs rospy diagnostic-updater rostest message-generation dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs rospy diagnostic-updater message-runtime dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_network_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
