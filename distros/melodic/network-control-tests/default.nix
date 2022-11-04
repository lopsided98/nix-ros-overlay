
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ddwrt-access-point, dynamic-reconfigure, hostapd-access-point, linksys-access-point, network-monitor-udp, network-traffic-control, rostest }:
buildRosPackage {
  pname = "ros-melodic-network-control-tests";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/network_control_tests/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "dee0c19262fce70a1924a6ff71c1004ed3c44e9e03a010ccf7972a9222f90034";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ access-point-control ddwrt-access-point dynamic-reconfigure hostapd-access-point linksys-access-point network-monitor-udp network-traffic-control rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test suite for the packages that are part of the &quot;WiFi Test Setup&quot; project:
    network_monitor_udp, network_traffic_control, hostapd_access_point, linksys_access_point,
    ddwrt_access_point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
