
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, marti-introspection-msgs, rosgraph, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-swri-cli-tools";
  version = "2.15.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "marti_common-release";
        rev = "release/melodic/swri_cli_tools/2.15.2-1";
        sha256 = "sha256-3asCd86nJsg2n4zW4jIF7TqSG5Uu4Ux2FB6QZBUz35I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ marti-introspection-msgs rosgraph rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosman contains the rosman tool for introspecting ROS nodes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
