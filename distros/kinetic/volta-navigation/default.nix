
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-kinetic-volta-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7d0e020355cbd333b4e14096108fc925cc0e005c58adb7d800927be1c37a5d3b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
