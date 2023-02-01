
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, access-point-control, catkin, dynamic-reconfigure, ieee80211-channels, rospy }:
buildRosPackage {
  pname = "ros-melodic-linksys-access-point";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "linux_networking-release";
        rev = "release/melodic/linksys_access_point/1.0.16-1";
        sha256 = "sha256-37Y5dUQJTRdFk0F02whGWIcMUtLvkbSA0SMv1zudTM4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ access-point-control dynamic-reconfigure ieee80211-channels rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node that controls a Linksys access point with
    a Linksys WRT610n-compatible web interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
