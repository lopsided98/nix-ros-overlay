
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-melodic-copernicus-navigation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_navigation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "aea86ea189044f29f15e382e225901e0dc38d7862b5f7aae0bcb17797f021698";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_navigation package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
