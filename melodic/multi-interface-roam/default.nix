
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-monitor-udp, diagnostic-msgs, pr2-msgs, dynamic-reconfigure, std-msgs, ieee80211-channels, catkin, pythonPackages, asmach, rospy }:
buildRosPackage {
  pname = "ros-melodic-multi-interface-roam";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/multi_interface_roam/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "63d583ac95a415fdd60c63c5056a5e1b11c9ec3f643028304d381bce18a3fb79";
  };

  buildType = "catkin";
  buildInputs = [ network-monitor-udp diagnostic-msgs dynamic-reconfigure pr2-msgs std-msgs ieee80211-channels asmach rospy ];
  propagatedBuildInputs = [ network-monitor-udp diagnostic-msgs pr2-msgs dynamic-reconfigure std-msgs ieee80211-channels asmach pythonPackages.twisted rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal lgpl2 gpl1 ];
  };
}
