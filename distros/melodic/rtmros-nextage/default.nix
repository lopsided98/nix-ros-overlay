
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nextage-description, nextage-gazebo, nextage-ik-plugin, nextage-moveit-config, nextage-ros-bridge }:
buildRosPackage {
  pname = "ros-melodic-rtmros-nextage";
  version = "0.8.6-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_nextage-release";
        rev = "release/melodic/rtmros_nextage/0.8.6-3";
        sha256 = "sha256-A95jqAFhCA5Uq45SL07yLZFAcNilgh+oWzp+O1eg6ZQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nextage-description nextage-gazebo nextage-ik-plugin nextage-moveit-config nextage-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_nextage package is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
