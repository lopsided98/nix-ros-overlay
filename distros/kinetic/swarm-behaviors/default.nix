
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, swarm-behaviors-position, swarm-behaviors-velocity, uav-local-coverage, uav-optimal-coverage, uav-random-direction, uav-simple-tracking, ugv-random-walk }:
buildRosPackage {
  pname = "ros-kinetic-swarm-behaviors";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/swarm_behaviors/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ea1ca90c7294da3b9ee43ebcf22e7e5bcbe33b419cf99d2f388befb19d350ba5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ swarm-behaviors-position swarm-behaviors-velocity uav-local-coverage uav-optimal-coverage uav-random-direction uav-simple-tracking ugv-random-walk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The swarm behaviors library contains implementations of swarm algorithms. It is part of the swarm library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
