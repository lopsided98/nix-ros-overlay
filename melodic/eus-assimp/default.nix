
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, catkin, pkg-config, assimp-devel, euslisp }:
buildRosPackage {
  pname = "ros-melodic-eus-assimp";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/eus_assimp/0.4.3-0.tar.gz;
    sha256 = "c82e9cbb4c4fd87a20d1c6a596293aed0dbc8661a1ccb4f57f4637cc688b8548";
  };

  propagatedBuildInputs = [ roseus assimp-devel ];
  nativeBuildInputs = [ catkin euslisp pkg-config assimp-devel ];

  meta = {
    description = ''eus_assimp'';
    #license = lib.licenses.BSD;
  };
}
