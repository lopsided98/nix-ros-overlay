
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, console-bridge, eigen, eigen-stl-containers, fcl, octomap, pkg-config, qhull, random-numbers, resource-retriever, rosunit, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-geometric-shapes";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/melodic/geometric_shapes/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "69256985d2e38d76997167f9fe4d98362ef5482f779422083d694a12b6937094";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ assimp boost console-bridge eigen eigen-stl-containers fcl octomap qhull random-numbers resource-retriever shape-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
