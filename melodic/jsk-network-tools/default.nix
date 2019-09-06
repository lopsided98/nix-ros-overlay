
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, rostest, message-generation, message-runtime, rospy, std-msgs, diagnostic-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-jsk-network-tools";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_network_tools/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "0b18287897e383f03659c05c224ed0ca710bdae634fc8633d1911f1fc6a2aa4f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs rospy diagnostic-updater rostest message-generation dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs rospy diagnostic-updater message-runtime dynamic-reconfigure std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_network_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
