
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, cmake-modules, collada-dom, collada-parser, collada-urdf, mk, openhrp3, pr2-description, qhull, resource-retriever, rosboost-cfg, rosbuild, roscpp, roseus, rospack, rostest, tf, urdf, urdfdom, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-euscollada";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/euscollada/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "4cc47dbe2143b21e17f6d26f40a793b22f8bf204cc3148a12d0a6fc6e014ce58";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules mk rosboost-cfg rosbuild ];
  checkInputs = [ openhrp3 pr2-description roseus ];
  propagatedBuildInputs = [ assimp-devel collada-dom collada-parser collada-urdf qhull resource-retriever roscpp rospack rostest tf urdf urdfdom yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''euscollada'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
