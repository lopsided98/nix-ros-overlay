
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, boost, catkin, console-bridge, eigen, eigen-stl-containers, octomap, pkg-config, qhull, random-numbers, resource-retriever, rosunit, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-geometric-shapes";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/noetic/geometric_shapes/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "d9c37665e4e427ca554f71c1a56afe6e3585996a22d10421094877ff3e9dd757";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ assimp boost console-bridge eigen eigen-stl-containers octomap qhull random-numbers resource-retriever shape-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains generic definitions of geometric shapes and bodies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
