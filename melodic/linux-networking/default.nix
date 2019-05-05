
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, multi-interface-roam, ieee80211-channels, network-control-tests, network-monitor-udp, asmach-tutorials, linksys-access-point, catkin, network-traffic-control, network-detector, asmach, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-melodic-linux-networking";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linux_networking/1.0.13-2.tar.gz;
    sha256 = "a8cdf75617afe3c16004467e3866a5de070a7e6ac7e5a4835be27f2a034e27a6";
  };

  propagatedBuildInputs = [ access-point-control hostapd-access-point network-control-tests ieee80211-channels multi-interface-roam network-monitor-udp asmach-tutorials linksys-access-point network-traffic-control network-detector asmach ddwrt-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
