
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, eigen, libyamlcpp, nodelet, roscpp, roslaunch, roslib, roslint, rostest, rosunit, sensor-msgs, tf2-ros, velodyne-driver, velodyne-laserscan, velodyne-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pointcloud";
  version = "1.7.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "velodyne-release";
        rev = "release/noetic/velodyne_pointcloud/1.7.0-1";
        sha256 = "sha256-/qMBykOXNewqBLR/+1JFoMN+NLbkP6XwPinxyV5zOGI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch rostest rosunit tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure eigen libyamlcpp nodelet roscpp roslib sensor-msgs tf2-ros velodyne-driver velodyne-laserscan velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
