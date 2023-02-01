
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, nodelet, roscpp, roslaunch, roslint, rostest, tf, velodyne-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-driver";
  version = "1.7.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "velodyne-release";
        rev = "release/noetic/velodyne_driver/1.7.0-1";
        sha256 = "sha256-nPihykwW0Z+iulXU7gUJF6R1nG+p6evzDGksmjVktA4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libpcap nodelet roscpp tf velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
