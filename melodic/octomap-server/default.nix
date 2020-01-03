
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-octomap-server";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/octomap_server/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "3cd3bc10e3c4567f7589abd4d3029b5b346d8db5944fb427a9097cc35c3c9296";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure nav-msgs nodelet octomap octomap-msgs octomap-ros pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
