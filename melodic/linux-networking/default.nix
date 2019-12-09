
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asmach-tutorials, network-monitor-udp, network-control-tests, hostapd-access-point, network-detector, network-traffic-control, ieee80211-channels, catkin, asmach, ddwrt-access-point, multi-interface-roam, access-point-control, linksys-access-point }:
buildRosPackage {
  pname = "ros-melodic-linux-networking";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linux_networking/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "3b4d9bab93c93ee4c779b53662fb2674d7fa926cf3c19caa3d3d49fffe2dc132";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ asmach-tutorials network-monitor-udp network-control-tests hostapd-access-point network-detector network-traffic-control ieee80211-channels asmach ddwrt-access-point multi-interface-roam access-point-control linksys-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
