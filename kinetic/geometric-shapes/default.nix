
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, boost, eigen-stl-containers, catkin, qhull, random-numbers, pkg-config, assimp, console-bridge, octomap, resource-retriever, eigen, visualization-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-geometric-shapes";
  version = "0.5.4-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometric_shapes-release/archive/release/kinetic/geometric_shapes/0.5.4-1.tar.gz;
    sha256 = "47688070fddf98a6f8d288c367e80a1e449a641686cafa1ef4e5679fc92c3298";
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
