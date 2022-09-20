
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-octomap-server";
  version = "0.6.7-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/octomap_server/0.6.7-2.tar.gz";
    name = "0.6.7-2.tar.gz";
    sha256 = "e3d5b8d31791cd37ab44d3e6858802b35afd4d36c7f840e83722fadf35a302df";
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
