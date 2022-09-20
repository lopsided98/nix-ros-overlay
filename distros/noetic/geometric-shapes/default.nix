
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, console-bridge, eigen, eigen-stl-containers, octomap, pkg-config, qhull, random-numbers, resource-retriever, rosunit, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-geometric-shapes";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/noetic/geometric_shapes/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "6f105fb610c996aabe52df57a2bed75ee9337a01f079495b78a1fa182ed66d63";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ assimp boost console-bridge eigen eigen-stl-containers octomap qhull random-numbers resource-retriever shape-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
