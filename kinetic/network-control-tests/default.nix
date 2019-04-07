
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, catkin, network-monitor-udp, linksys-access-point, rostest, network-traffic-control, dynamic-reconfigure, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-kinetic-network-control-tests";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/network_control_tests/1.0.15-0.tar.gz;
    sha256 = "d88b347e5713476cbc43f1c5935d2749107992c9acaa159ae9a8bb46f9df1dac";
  };

  buildInputs = [ rostest network-traffic-control access-point-control dynamic-reconfigure ddwrt-access-point hostapd-access-point network-monitor-udp linksys-access-point ];
  propagatedBuildInputs = [ rostest network-traffic-control access-point-control dynamic-reconfigure ddwrt-access-point hostapd-access-point network-monitor-udp linksys-access-point ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test suite for the packages that are part of the &quot;WiFi Test Setup&quot; project:
    network_monitor_udp, network_traffic_control, hostapd_access_point, linksys_access_point,
    ddwrt_access_point.'';
    #license = lib.licenses.BSD;
  };
}
