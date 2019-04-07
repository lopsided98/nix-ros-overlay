
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, boost, eigen-stl-containers, catkin, qhull, random-numbers, pkg-config, assimp, console-bridge, octomap, resource-retriever, eigen, visualization-msgs, rosunit }:
buildRosPackage {
  pname = "ros-melodic-geometric-shapes";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometric_shapes-release/archive/release/melodic/geometric_shapes/0.6.1-0.tar.gz;
    sha256 = "d30facbce2033851ba0b121a75c8d41c47a91831e51efb11dafe3bc877a50809";
  };

  buildInputs = [ shape-msgs boost eigen-stl-containers qhull random-numbers pkg-config assimp console-bridge octomap resource-retriever eigen visualization-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ shape-msgs boost eigen-stl-containers qhull random-numbers assimp console-bridge octomap resource-retriever eigen visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains generic definitions of geometric shapes and bodies.'';
    #license = lib.licenses.BSD;
  };
}
