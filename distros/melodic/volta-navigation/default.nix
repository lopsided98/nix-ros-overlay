
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-melodic-volta-navigation";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_navigation/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9590f489e4b119ad2478dd4aeb7bfb538f145dc8e6d3e2710cb3e417cc92cabb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_navigation package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
