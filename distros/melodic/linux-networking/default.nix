
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, asmach, asmach-tutorials, catkin, ddwrt-access-point, hostapd-access-point, ieee80211-channels, linksys-access-point, multi-interface-roam, network-control-tests, network-detector, network-monitor-udp, network-traffic-control }:
buildRosPackage {
  pname = "ros-melodic-linux-networking";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linux_networking/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "3b4d9bab93c93ee4c779b53662fb2674d7fa926cf3c19caa3d3d49fffe2dc132";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ access-point-control asmach asmach-tutorials ddwrt-access-point hostapd-access-point ieee80211-channels linksys-access-point multi-interface-roam network-control-tests network-detector network-monitor-udp network-traffic-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
