
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, multi-interface-roam, ieee80211-channels, network-control-tests, network-monitor-udp, asmach-tutorials, linksys-access-point, catkin, network-traffic-control, network-detector, asmach, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-melodic-linux-networking";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/linux_networking/1.0.15-0.tar.gz;
    sha256 = "0939f66cfb063367f7dfc286fc64ca065f2377bdfb6f25afe3c5e395a8111a56";
  };

  propagatedBuildInputs = [ access-point-control hostapd-access-point multi-interface-roam ieee80211-channels network-control-tests network-monitor-udp asmach-tutorials linksys-access-point network-traffic-control network-detector asmach ddwrt-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The linux_networking package'';
    #license = lib.licenses.TODO;
  };
}
