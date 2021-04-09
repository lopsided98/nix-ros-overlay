
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-kinetic-volta-navigation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_navigation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "635ff7f55e74e8a06ce59881d26418172b8093a7ee51249d0b0f9960d6918592";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
