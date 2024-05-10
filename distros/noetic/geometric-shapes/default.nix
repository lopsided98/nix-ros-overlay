
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, console-bridge, eigen, eigen-stl-containers, fcl, octomap, pkg-config, qhull, random-numbers, resource-retriever, rosunit, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-geometric-shapes";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/noetic/geometric_shapes/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "624792894d0e1034d4507364db61554fb5f11eee6f489b69221129cfec9525f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ assimp boost console-bridge eigen eigen-stl-containers fcl octomap qhull random-numbers resource-retriever shape-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Generic definitions of geometric shapes and bodies.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
