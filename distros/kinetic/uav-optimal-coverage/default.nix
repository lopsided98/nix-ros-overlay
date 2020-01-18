
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cpswarm-msgs, geometry-msgs, roscpp, swarm-behaviors-position, swarm-behaviors-velocity }:
buildRosPackage {
  pname = "ros-kinetic-uav-optimal-coverage";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/uav_optimal_coverage/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "15476e2bd2e1d382ecd34a306b8b6da168cca3efae6f3ad8f6b7fcdf878dda4c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cpswarm-msgs geometry-msgs roscpp swarm-behaviors-position swarm-behaviors-velocity ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that performs optimal coverage with a swarm of unmanned aerial vehicles (UAVs). The UAVs optimally divide the area to be covered among each other.'';
    license = with lib.licenses; [ asl20 ];
  };
}
