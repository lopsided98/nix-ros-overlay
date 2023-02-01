
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, nodelet, openslam-gmapping, roscpp, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-gmapping";
  version = "1.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "slam_gmapping-release";
        rev = "release/melodic/gmapping/1.4.1-1";
        sha256 = "sha256-F6RgxeEU3GejHxb/nPx1nzO3xjmvq6J13Bqs5N5vRrI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ nav-msgs nodelet openslam-gmapping roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
