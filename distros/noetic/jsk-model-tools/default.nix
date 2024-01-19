
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-noetic-jsk-model-tools";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/jsk_model_tools/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "5606e0d782c584bbf5c7e4744731c8b8eb0e504ed638478022cd4f9399dc3f33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eus-assimp euscollada ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
