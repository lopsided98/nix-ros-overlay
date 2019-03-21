
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, pcl-ros, tf, eigen }:
buildRosPackage {
  pname = "ros-kinetic-semantic-point-annotator";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/semantic_point_annotator/0.1.28-0.tar.gz;
    sha256 = "90b205197bb603f92fa6ca99780882905a49ee78c8f7eebaaa9b86351d5dcefe";
  };

  propagatedBuildInputs = [ tf eigen roscpp pcl-ros ];
  nativeBuildInputs = [ eigen catkin tf pcl-ros roscpp ];

  meta = {
    description = ''A node which annotates 3D point cloud data with semantic labels.'';
    #license = lib.licenses.BSD;
  };
}
