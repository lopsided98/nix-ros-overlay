
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-octomap-server";
  version = "0.6.4-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_server/0.6.4-2.tar.gz";
    name = "0.6.4-2.tar.gz";
    sha256 = "db7683c78bca7bbc01faf9f79ae7fe1b9aa81cf103e6518bd302190d95331c89";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure nav-msgs nodelet octomap octomap-msgs octomap-ros pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
