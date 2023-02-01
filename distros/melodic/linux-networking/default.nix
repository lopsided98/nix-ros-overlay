
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, asmach, asmach-tutorials, catkin, ddwrt-access-point, hostapd-access-point, ieee80211-channels, linksys-access-point, multi-interface-roam, network-control-tests, network-detector, network-monitor-udp, network-traffic-control }:
buildRosPackage {
  pname = "ros-melodic-linux-networking";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "linux_networking-release";
        rev = "release/melodic/linux_networking/1.0.16-1";
        sha256 = "sha256-PNSC3GT725wY6mEFM1guX0AklXOupX28D2fZQfEIpR8=";
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
