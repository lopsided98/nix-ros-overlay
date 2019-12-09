
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asmach-tutorials, network-monitor-udp, network-control-tests, hostapd-access-point, network-detector, network-traffic-control, ieee80211-channels, catkin, asmach, ddwrt-access-point, multi-interface-roam, access-point-control, linksys-access-point }:
buildRosPackage {
  pname = "ros-kinetic-linux-networking";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/linux_networking/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "661d55453241444a81bd83fc8baaf1dd29dbe46ebba18c7eb83705448b176a32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ asmach-tutorials network-monitor-udp network-control-tests hostapd-access-point network-detector network-traffic-control ieee80211-channels asmach ddwrt-access-point multi-interface-roam access-point-control linksys-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
