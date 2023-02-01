
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-volta-description";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "volta-release";
        rev = "release/noetic/volta_description/1.2.0-1";
        sha256 = "sha256-Llh4WxmmNdTxJC8KHCBxkiTtKzJ3iSsOqvHzYzCT968=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_description package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
