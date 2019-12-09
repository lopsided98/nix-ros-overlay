
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, assimp, urdf, resource-retriever, filters, tf, catkin, visualization-msgs, roscpp, bullet }:
buildRosPackage {
  pname = "ros-kinetic-robot-self-filter";
  version = "0.1.30-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/kinetic/robot_self_filter/0.1.30-1.tar.gz";
    name = "0.1.30-1.tar.gz";
    sha256 = "4e815965799f845bee8d0af7d676c260bfae60ef2a4e4902361d753cefb92c6f";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs assimp urdf resource-retriever filters tf visualization-msgs roscpp bullet ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs assimp urdf resource-retriever tf filters visualization-msgs roscpp bullet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
