
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-media-export";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/media_export-release/archive/release/noetic/media_export/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "52d1af6155ad5b84dac185f7a738cacfcfd4073f47cd634a04b506c6d2a346e2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
