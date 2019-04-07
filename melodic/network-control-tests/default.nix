
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, catkin, network-monitor-udp, linksys-access-point, rostest, network-traffic-control, dynamic-reconfigure, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-melodic-network-control-tests";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_control_tests/1.0.15-0.tar.gz;
    sha256 = "4add026eec7c8446a8d73d41c53a13ebd581c20dc59cc4bae70bca03bafd9864";
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
