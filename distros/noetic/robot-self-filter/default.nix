
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, bullet, catkin, cmake-modules, filters, pcl-ros, resource-retriever, roscpp, sensor-msgs, tf, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-self-filter";
  version = "0.1.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/robot_self_filter-gbp/archive/release/noetic/robot_self_filter/0.1.32-1.tar.gz";
    name = "0.1.32-1.tar.gz";
    sha256 = "e627c0eabb4fe4126ab68e4f6e392792669515ae1cc9ec0c6df2328bae93f09b";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ assimp bullet filters pcl-ros resource-retriever roscpp sensor-msgs tf tinyxml urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters the robot's body out of point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
