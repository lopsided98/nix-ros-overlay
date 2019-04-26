
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, hostapd-access-point, catkin, network-monitor-udp, linksys-access-point, rostest, network-traffic-control, dynamic-reconfigure, ddwrt-access-point }:
buildRosPackage {
  pname = "ros-melodic-network-control-tests";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_control_tests/1.0.13-2.tar.gz;
    sha256 = "277a453251b08e5d8616c7c1af2081b1f9a5fde81c7415b7eb5eac329e1aefb6";
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
