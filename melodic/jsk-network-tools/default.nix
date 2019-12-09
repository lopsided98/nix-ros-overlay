
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, diagnostic-msgs, dynamic-reconfigure, std-msgs, catkin, rospy, roscpp, message-runtime, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-jsk-network-tools";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_network_tools/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "0b18287897e383f03659c05c224ed0ca710bdae634fc8633d1911f1fc6a2aa4f";
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
