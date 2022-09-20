
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-localization, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-roomba-stage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/roomba_stage/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "36ce4d4177e886417214af1136d05abf9c665f404b3ae0037020b0b2675693ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fake-localization map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomba_stage package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
