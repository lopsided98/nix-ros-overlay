
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-filters, nodelet, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-laser-ortho-projector";
  version = "0.3.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "scan_tools-release";
        rev = "release/melodic/laser_ortho_projector/0.3.3-2";
        sha256 = "sha256-eEe1oaKKiuLndzhIBwMWpgmpOe8cmZMgYWNthK26c0g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet pcl pcl-conversions pcl-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_ortho_projector package calculates orthogonal projections of LaserScan messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
