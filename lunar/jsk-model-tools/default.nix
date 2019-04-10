
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-lunar-jsk-model-tools";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/lunar/jsk_model_tools/0.4.3-0.tar.gz;
    sha256 = "a3fcf8abbd88f37aa31892b5ba4ec7a0433a2a2fb34909659337823ea81566b0";
  };

  propagatedBuildInputs = [ euscollada eus-assimp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
