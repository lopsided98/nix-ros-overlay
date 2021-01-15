
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, footstep-planner, map-server, octomap-server }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-navigation";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_navigation/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "81d0be82a1d15aa91595d78c027bcbcddb29fa942f8d599fd208a336adac1bb8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ footstep-planner map-server octomap-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is for generating footsteps. 
    It has several config files and launch files in order to use footstep planner package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
