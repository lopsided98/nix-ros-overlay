
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, bullet, tf, sensor-msgs, catkin, assimp, urdf, resource-retriever, visualization-msgs, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pr2-navigation-self-filter";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_navigation_self_filter/0.1.28-0.tar.gz;
    sha256 = "b62e8dc7f7f158801fb3a72a00bc1d6c4f60d3973cc9aed82263814b9f266f2f";
  };

  propagatedBuildInputs = [ filters bullet tf sensor-msgs assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];
  nativeBuildInputs = [ filters bullet tf sensor-msgs catkin assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    #license = lib.licenses.BSD;
  };
}
