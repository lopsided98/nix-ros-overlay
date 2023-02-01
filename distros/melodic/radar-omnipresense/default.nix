
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-radar-omnipresense";
  version = "0.3.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "SCU-RSL-ROS";
        repo = "radar_omnipresense-release";
        rev = "release/melodic/radar_omnipresense/0.3.0-0";
        sha256 = "sha256-+10LMY4hFNcCm4ZSWVxSpJbBHSEfoDyOf+J3FXmpfgo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ message-generation message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
