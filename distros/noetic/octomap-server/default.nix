
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-octomap-server";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/noetic/octomap_server/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "d85b080b98a1699bcd6423c97bc0807b9a7790d06aa745651622af0c478b2c7a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure nav-msgs nodelet octomap octomap-msgs octomap-ros pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
