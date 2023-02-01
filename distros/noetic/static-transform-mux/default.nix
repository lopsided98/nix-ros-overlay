
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2-msgs }:
buildRosPackage {
  pname = "ros-noetic-static-transform-mux";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "peci1";
        repo = "static_transform_mux-release";
        rev = "release/noetic/static_transform_mux/1.1.0-1";
        sha256 = "sha256-ExTQbRpJhwknQMuBV4fSvNU0epTxEVZ/Z+RG9aqDWF4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A helper node that makes sure everybody knows about all static transforms, even if they are published by multiple publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
