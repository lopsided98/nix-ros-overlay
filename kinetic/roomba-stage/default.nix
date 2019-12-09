
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, stage-ros, catkin, fake-localization, move-base }:
buildRosPackage {
  pname = "ros-kinetic-roomba-stage";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/roomba_stage/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "d221683d4726b82dca7270ba87d4ef0a58e4768b986ee2e8438a7f361499cc1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-server stage-ros fake-localization move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roomba_stage package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
