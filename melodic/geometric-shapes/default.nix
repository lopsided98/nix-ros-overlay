
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-stl-containers, boost, random-numbers, assimp, resource-retriever, octomap, catkin, shape-msgs, rosunit, eigen, console-bridge, visualization-msgs, qhull, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-geometric-shapes";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/melodic/geometric_shapes/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "d30facbce2033851ba0b121a75c8d41c47a91831e51efb11dafe3bc877a50809";
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
