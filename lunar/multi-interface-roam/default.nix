
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ieee80211-channels, network-monitor-udp, pr2-msgs, asmach, rospy, std-msgs, diagnostic-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-multi-interface-roam";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/multi_interface_roam/1.0.15-0.tar.gz;
    sha256 = "b6d54f5e5147ef4b039a7fa877cb78e701505ff8de3166bb5f2c17c53250d5d0";
  };

  buildInputs = [ ieee80211-channels network-monitor-udp rospy asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ];
  propagatedBuildInputs = [ ieee80211-channels network-monitor-udp rospy asmach dynamic-reconfigure std-msgs diagnostic-msgs pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal lgpl2 gpl1 ];
  };
}
