
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, dynamic-reconfigure, octomap, std-msgs, std-srvs, octomap-msgs, catkin, pcl, pcl-conversions, nodelet, roscpp, visualization-msgs, octomap-ros, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-octomap-server";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_server/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "75b3ad03bcef61e27fb9d19c5ad1efb1ffccb8fc2353c355e58a31b9eb3802b0";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure octomap std-msgs std-srvs octomap-msgs roscpp pcl pcl-conversions visualization-msgs octomap-ros nodelet nav-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure octomap std-msgs std-srvs octomap-msgs pcl pcl-conversions nodelet roscpp octomap-ros visualization-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
