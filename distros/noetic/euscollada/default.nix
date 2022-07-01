
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, cmake-modules, collada-dom, collada-parser, collada-urdf, libyamlcpp, mk, openhrp3, pr2-description, qhull, resource-retriever, rosboost-cfg, rosbuild, roscpp, roseus, rospack, rostest, tf, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-noetic-euscollada";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/euscollada/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "6f2a764637787cb278ad506b5d7207109c6b3e5e87a498d71453cdf9c1b1cb7a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules mk rosboost-cfg rosbuild ];
  checkInputs = [ openhrp3 pr2-description roseus ];
  propagatedBuildInputs = [ assimp-devel collada-dom collada-parser collada-urdf libyamlcpp qhull resource-retriever roscpp rospack rostest tf urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''euscollada'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
