
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ieee80211-channels, network-monitor-udp, pr2-msgs, asmach, rospy, std-msgs, diagnostic-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-multi-interface-roam";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/multi_interface_roam/1.0.15-0.tar.gz;
    sha256 = "a01fbdcf55341c0055f0c7a0d6dc5ff894e6880547eeb6e446ef781fe6214157";
  };

  propagatedBuildInputs = [ asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ieee80211-channels network-monitor-udp rospy ];
  nativeBuildInputs = [ ieee80211-channels catkin network-monitor-udp rospy asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ];

  meta = {
    description = ''sdsdddsdsds'';
    #license = lib.licenses.BSD;
  };
}
