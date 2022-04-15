
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-noetic-jsk-model-tools";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/noetic/jsk_model_tools/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "1629e8ab27a3570996b0dda67032e3cfc6ce2467dbc0512cc90984e8f51aeeeb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eus-assimp euscollada ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
