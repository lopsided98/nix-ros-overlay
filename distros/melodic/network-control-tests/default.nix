
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, ddwrt-access-point, dynamic-reconfigure, hostapd-access-point, linksys-access-point, network-monitor-udp, network-traffic-control, rostest }:
buildRosPackage {
  pname = "ros-melodic-network-control-tests";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "linux_networking-release";
        rev = "release/melodic/network_control_tests/1.0.16-1";
        sha256 = "sha256-J3vAwINcz9MKYfAJYiZkpkgX4i3owBXWDnL9mj0Dw4M=";
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
