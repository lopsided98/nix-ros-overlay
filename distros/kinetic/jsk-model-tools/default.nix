
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eus-assimp, euscollada }:
buildRosPackage {
  pname = "ros-kinetic-jsk-model-tools";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/kinetic/jsk_model_tools/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "e47b14db7994c479126b3e62e415115c91f9e496be2a8435b428dcf27f568dcb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eus-assimp euscollada ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
