
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-monitor-udp, diagnostic-msgs, pr2-msgs, dynamic-reconfigure, std-msgs, ieee80211-channels, catkin, asmach, rospy }:
buildRosPackage {
  pname = "ros-kinetic-multi-interface-roam";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/multi_interface_roam/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "f7fb1c54b1c27de78c96197d5e9d1bc2af15ba8951225e6bec4c2175f926c8d3";
  };

  buildType = "catkin";
  buildInputs = [ network-monitor-udp diagnostic-msgs dynamic-reconfigure pr2-msgs std-msgs ieee80211-channels asmach rospy ];
  propagatedBuildInputs = [ network-monitor-udp diagnostic-msgs dynamic-reconfigure pr2-msgs std-msgs ieee80211-channels asmach rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal lgpl2 gpl1 ];
  };
}
