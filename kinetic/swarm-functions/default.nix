
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, coverage-path, kinematics-exchanger, area-division, catkin, target-monitor, state-exchanger, task-allocation }:
buildRosPackage {
  pname = "ros-kinetic-swarm-functions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/swarm_functions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4fe3f0bdb2e77fc5523bc763d26edbf2b5e85ca70255f29bd8d43a5c8d4140dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ coverage-path kinematics-exchanger area-division target-monitor state-exchanger task-allocation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The swarm functions library provides simple functionalities that enable swarm algorithms to work. It is part of the swarm library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
