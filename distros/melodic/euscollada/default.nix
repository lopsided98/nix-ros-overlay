
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, catkin, cmake-modules, collada-dom, collada-parser, collada-urdf, libyamlcpp, mk, openhrp3, pr2-description, qhull, resource-retriever, rosboost-cfg, rosbuild, roscpp, roseus, rospack, rostest, tf, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-euscollada";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/euscollada/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "66836a2b67d75a93f8b328355c0bef40fd8894e4640f144bd3751c7b36a5f6b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules mk rosboost-cfg rosbuild ];
  checkInputs = [ openhrp3 pr2-description roseus ];
  propagatedBuildInputs = [ assimp-devel collada-dom collada-parser collada-urdf libyamlcpp qhull resource-retriever roscpp rospack rostest tf urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''euscollada'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
