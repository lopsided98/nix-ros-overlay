
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asmach, catkin, diagnostic-msgs, dynamic-reconfigure, ieee80211-channels, network-monitor-udp, pr2-msgs, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-multi-interface-roam";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/multi_interface_roam/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "63d583ac95a415fdd60c63c5056a5e1b11c9ec3f643028304d381bce18a3fb79";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ asmach diagnostic-msgs dynamic-reconfigure ieee80211-channels network-monitor-udp pr2-msgs pythonPackages.twisted rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal "LGPL" "GPL-for-sigblock" ];
  };
}
