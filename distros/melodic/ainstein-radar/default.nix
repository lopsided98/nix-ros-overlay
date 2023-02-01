
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-drivers, ainstein-radar-filters, ainstein-radar-gazebo-plugins, ainstein-radar-msgs, ainstein-radar-rviz-plugins, ainstein-radar-tools, catkin }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar";
  version = "2.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "AinsteinAI";
        repo = "ainstein_radar-release";
        rev = "release/melodic/ainstein_radar/2.0.2-1";
        sha256 = "sha256-el4EKN6SijPFh0qnPEjh+GKSaR92fEC/OATN6gmIMSY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ainstein-radar-drivers ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-msgs ainstein-radar-rviz-plugins ainstein-radar-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
