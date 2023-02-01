
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-zeroconf-msgs";
  version = "0.2.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "zeroconf_msgs-release";
        rev = "release/melodic/zeroconf_msgs/0.2.1-0";
        sha256 = "sha256-Ou+MZahdKRl+1Hrioz5APrlWl5j71AeiLFPgR2KqFZo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''General ros communications used by the various zeroconf implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
