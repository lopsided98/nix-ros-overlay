
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-octomap-server";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_server/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "1d692893c7da6732075e842d0f6db9034c2a4a1d184c8a32e093c2f0c2f1dc0a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure nav-msgs nodelet octomap octomap-msgs octomap-ros pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
