
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-localization, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-kinetic-roomba-stage";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/roomba_stage/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "d221683d4726b82dca7270ba87d4ef0a58e4768b986ee2e8438a7f361499cc1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fake-localization map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomba_stage package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
