
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-volta-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b020739bf02ba03af20988334fc626725e9badbdc4063ee9a923d3384777c4e6";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_base package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
