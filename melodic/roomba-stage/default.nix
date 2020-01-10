
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-localization, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-roomba-stage";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/roomba_stage/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "3eb6f70b0f7abdfe001d4ca9ce4c387b8604bbd788a4c11ccd2d8a4c3a79e433";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fake-localization map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomba_stage package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
