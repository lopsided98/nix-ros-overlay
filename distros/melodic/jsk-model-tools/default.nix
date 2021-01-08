
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-melodic-jsk-model-tools";
  version = "0.4.3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/jsk_model_tools/0.4.3-0.tar.gz";
    name = "0.4.3-0.tar.gz";
    sha256 = "41abafed65016c7f1f4825f689b95a45fcf1d8d93eeec12752ea0f1f728521a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eus-assimp euscollada ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
