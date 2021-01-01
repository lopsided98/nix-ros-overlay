
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, bullet, catkin, filters, pcl-ros, resource-retriever, roscpp, sensor-msgs, tf, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-self-filter";
  version = "0.1.30-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/kinetic/robot_self_filter/0.1.30-1.tar.gz";
    name = "0.1.30-1.tar.gz";
    sha256 = "4e815965799f845bee8d0af7d676c260bfae60ef2a4e4902361d753cefb92c6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp bullet filters pcl-ros resource-retriever roscpp sensor-msgs tf urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
