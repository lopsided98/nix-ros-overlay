
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ieee80211-channels, network-monitor-udp, pr2-msgs, asmach, rospy, std-msgs, diagnostic-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-multi-interface-roam";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/multi_interface_roam/1.0.13-2.tar.gz;
    sha256 = "2cc32a6b9e3c72f150e3a780951283671bfcd9f2e51e8364f373b9af4f7cf9de";
  };

  buildInputs = [ asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ieee80211-channels network-monitor-udp rospy ];
  propagatedBuildInputs = [ asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ieee80211-channels network-monitor-udp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    #license = lib.licenses.BSD;
  };
}
