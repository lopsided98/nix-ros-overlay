
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-noetic-jsk-model-tools";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/jsk_model_tools/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "01078b70b2d69d83a5a531d05c4f546d557a8281c6376a3e090aa274df68173b";
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
