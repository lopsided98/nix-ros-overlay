
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, catkin, pkg-config, assimp-devel, euslisp }:
buildRosPackage {
  pname = "ros-lunar-eus-assimp";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/lunar/eus_assimp/0.4.3-0.tar.gz;
    sha256 = "e3d68b389ee4c92b3544e2dd8bcf90dd20d67427ff17660e5cc0880b289850b5";
  };

  buildInputs = [ euslisp pkg-config assimp-devel ];
  propagatedBuildInputs = [ roseus assimp-devel ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_assimp'';
    #license = lib.licenses.BSD;
  };
}
