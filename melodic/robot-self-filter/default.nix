
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, bullet, cmake-modules, tf, sensor-msgs, catkin, tinyxml, assimp, urdf, resource-retriever, visualization-msgs, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-self-filter";
  version = "0.1.31";

  src = fetchurl {
    url = https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/melodic/robot_self_filter/0.1.31-0.tar.gz;
    sha256 = "8a6538dd30770242d25476003332f8ac072fbb0837e50cdde55600dc7d063150";
  };

  buildInputs = [ filters bullet cmake-modules tf sensor-msgs tinyxml assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];
  propagatedBuildInputs = [ filters bullet tf sensor-msgs tinyxml assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    #license = lib.licenses.BSD;
  };
}
