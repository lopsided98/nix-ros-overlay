
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, multi-interface-roam, ieee80211-channels, network-control-tests, network-monitor-udp, asmach-tutorials, linksys-access-point, catkin, network-traffic-control, network-detector, asmach, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-kinetic-linux-networking";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/linux_networking/1.0.15-0.tar.gz;
    sha256 = "661d55453241444a81bd83fc8baaf1dd29dbe46ebba18c7eb83705448b176a32";
  };

  propagatedBuildInputs = [ access-point-control hostapd-access-point multi-interface-roam ieee80211-channels network-control-tests network-monitor-udp asmach-tutorials linksys-access-point network-traffic-control network-detector asmach ddwrt-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    #license = lib.licenses.TODO;
  };
}
