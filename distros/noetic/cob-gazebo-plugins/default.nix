
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-plugins";
  version = "0.7.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_gazebo_plugins-release";
        rev = "release/noetic/cob_gazebo_plugins/0.7.7-1";
        sha256 = "sha256-94XQWWS+zZHECKS2T+TXhIV6vXs6GdFiN3wh2R8AD2A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Additional gazebo plugins used with Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
