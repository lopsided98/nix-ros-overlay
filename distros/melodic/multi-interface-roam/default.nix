
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asmach, catkin, diagnostic-msgs, dynamic-reconfigure, ieee80211-channels, network-monitor-udp, pr2-msgs, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-multi-interface-roam";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "linux_networking-release";
        rev = "release/melodic/multi_interface_roam/1.0.16-1";
        sha256 = "sha256-1L6cTx+JWhWGuKNKSSrhUiAdhyaryrdeZSTwtb810bI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ asmach diagnostic-msgs dynamic-reconfigure ieee80211-channels network-monitor-udp pr2-msgs pythonPackages.twisted rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''sdsdddsdsds'';
    license = with lib.licenses; [ bsdOriginal "LGPL" "GPL-for-sigblock" ];
  };
}
