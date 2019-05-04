
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-description, tf, collada-urdf, roseus, rospack, mk, openhrp3, rosbuild, catkin, collada-parser, urdf, resource-retriever, roscpp, rosboost-cfg, cmake-modules, libyamlcpp, qhull, urdfdom, rostest, assimp-devel }:
buildRosPackage {
  pname = "ros-kinetic-euscollada";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/euscollada/0.4.2-0.tar.gz;
    sha256 = "e3c0b07d764ef97dd5cb17da180854c4a11886b019ef1670f94d770e4d5aeaa5";
  };

  buildInputs = [ rospack rosboost-cfg collada-urdf cmake-modules libyamlcpp mk qhull rosbuild roscpp urdfdom rostest collada-parser urdf resource-retriever assimp-devel tf ];
  checkInputs = [ roseus openhrp3 pr2-description ];
  propagatedBuildInputs = [ rospack collada-urdf libyamlcpp qhull roscpp urdfdom rostest collada-parser urdf resource-retriever assimp-devel tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''euscollada'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
