
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, bullet, cmake-modules, tf, sensor-msgs, catkin, tinyxml, assimp, urdf, resource-retriever, visualization-msgs, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-lunar-robot-self-filter";
  version = "0.1.31";

  src = fetchurl {
    url = https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/lunar/robot_self_filter/0.1.31-0.tar.gz;
    sha256 = "556614ac2650281d1da25ba7bf154c1e4324f909b422f1a99a9d19d31d90e45a";
  };

  buildInputs = [ filters bullet cmake-modules tf sensor-msgs tinyxml assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];
  propagatedBuildInputs = [ filters bullet tf sensor-msgs tinyxml assimp urdf resource-retriever visualization-msgs pcl-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
