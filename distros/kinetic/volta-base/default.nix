
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-volta-base";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_base/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e472ff308a257ff5654da25a23b57e9d5632086de5968f639df58e48324d23a8";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_base package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
