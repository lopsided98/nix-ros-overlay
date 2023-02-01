
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, geometry-msgs, laser-geometry, map-msgs, message-filters, message-generation, message-runtime, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rosconsole, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-melodic-nonpersistent-voxel-layer";
  version = "1.2.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "SteveMacenski";
        repo = "nonpersistent_voxel_layer-release";
        rev = "release/melodic/nonpersistent_voxel_layer/1.2.3-2";
        sha256 = "sha256-GVKfgrQXmKywtjL1o5ZWG5ZFCrKSz/mVz56iZnnCuk8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs laser-geometry map-msgs message-filters message-runtime nav-msgs pcl-conversions pcl-ros pluginlib rosconsole roscpp sensor-msgs std-msgs tf visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
