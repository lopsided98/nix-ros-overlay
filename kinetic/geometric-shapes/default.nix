
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-stl-containers, boost, random-numbers, assimp, resource-retriever, octomap, catkin, shape-msgs, rosunit, eigen, console-bridge, visualization-msgs, qhull, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-geometric-shapes";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/kinetic/geometric_shapes/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "47688070fddf98a6f8d288c367e80a1e449a641686cafa1ef4e5679fc92c3298";
  };

  buildType = "catkin";
  buildInputs = [ eigen-stl-containers boost random-numbers assimp resource-retriever octomap shape-msgs eigen visualization-msgs console-bridge qhull pkg-config ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen-stl-containers boost random-numbers assimp resource-retriever octomap shape-msgs eigen visualization-msgs console-bridge qhull ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
