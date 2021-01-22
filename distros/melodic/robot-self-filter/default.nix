
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, bullet, catkin, cmake-modules, filters, pcl-ros, resource-retriever, roscpp, sensor-msgs, tf, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-self-filter";
  version = "0.1.31";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/melodic/robot_self_filter/0.1.31-0.tar.gz";
    name = "0.1.31-0.tar.gz";
    sha256 = "8a6538dd30770242d25476003332f8ac072fbb0837e50cdde55600dc7d063150";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ assimp bullet filters pcl-ros resource-retriever roscpp sensor-msgs tf tinyxml urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
