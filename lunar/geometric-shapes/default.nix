
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, boost, eigen-stl-containers, catkin, qhull, random-numbers, pkg-config, assimp, console-bridge, octomap, resource-retriever, eigen, visualization-msgs, rosunit }:
buildRosPackage {
  pname = "ros-lunar-geometric-shapes";
  version = "0.5.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometric_shapes-release/archive/release/lunar/geometric_shapes/0.5.4-0.tar.gz;
    sha256 = "7ae7671f07929267d2836083614ff3e36e38b9332dabf6db95d9f5209dddac2e";
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
