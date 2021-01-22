
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, asmach, asmach-tutorials, catkin, ddwrt-access-point, hostapd-access-point, ieee80211-channels, linksys-access-point, multi-interface-roam, network-control-tests, network-detector, network-monitor-udp, network-traffic-control }:
buildRosPackage {
  pname = "ros-kinetic-linux-networking";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/linux_networking/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "661d55453241444a81bd83fc8baaf1dd29dbe46ebba18c7eb83705448b176a32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ access-point-control asmach asmach-tutorials ddwrt-access-point hostapd-access-point ieee80211-channels linksys-access-point multi-interface-roam network-control-tests network-detector network-monitor-udp network-traffic-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
