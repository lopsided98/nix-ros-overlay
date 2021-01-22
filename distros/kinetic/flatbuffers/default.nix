
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-flatbuffers";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/flatbuffers-release/archive/release/kinetic/flatbuffers/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "ed1515b9e9f8887a15b2049c6adca6d69dd786b2bc5072731cbacfa659f42083";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google flatbuffers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
