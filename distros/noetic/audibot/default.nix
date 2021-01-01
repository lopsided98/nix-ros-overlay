
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, audibot-gazebo, catkin }:
buildRosPackage {
  pname = "ros-noetic-audibot";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "75f51485661586fa9905a63aa4231dd3f56eb468580543fd795636301878d596";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audibot-description audibot-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
