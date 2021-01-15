
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asmach, catkin, diagnostic-msgs, dynamic-reconfigure, ieee80211-channels, network-monitor-udp, pr2-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-multi-interface-roam";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/multi_interface_roam/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "f7fb1c54b1c27de78c96197d5e9d1bc2af15ba8951225e6bec4c2175f926c8d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ asmach diagnostic-msgs dynamic-reconfigure ieee80211-channels network-monitor-udp pr2-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal lgpl2 gpl1 ];
  };
}
