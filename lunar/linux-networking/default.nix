
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, multi-interface-roam, ieee80211-channels, network-control-tests, network-monitor-udp, asmach-tutorials, linksys-access-point, catkin, network-traffic-control, network-detector, asmach, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-lunar-linux-networking";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/linux_networking/1.0.15-0.tar.gz;
    sha256 = "bd467d05538acecb999c3817b58afc090af3dc8028531a2ebd15f3e9f8ca53f8";
  };

  propagatedBuildInputs = [ access-point-control hostapd-access-point network-control-tests ieee80211-channels multi-interface-roam network-monitor-udp asmach-tutorials linksys-access-point network-traffic-control network-detector asmach ddwrt-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
