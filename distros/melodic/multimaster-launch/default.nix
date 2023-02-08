
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clock-relay, master-discovery-fkie, master-sync-fkie, message-relay, roslaunch, tf2-relay }:
buildRosPackage {
  pname = "ros-melodic-multimaster-launch";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "cpr_multimaster_tools-release";
        rev = "release/melodic/multimaster_launch/0.0.2-1";
        sha256 = "sha256-VcIcG8ter9vFA0diJf99sQD9c0ynFEeG5GkxB4yUNBU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ clock-relay master-discovery-fkie master-sync-fkie message-relay tf2-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master bringup launch files for CPR platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
