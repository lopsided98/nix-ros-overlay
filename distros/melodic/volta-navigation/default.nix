
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-melodic-volta-navigation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_navigation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "51f12683ce20db79b5b92ab11cae056cb514b6b8922c47479f4e2f30a3f3a7ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
