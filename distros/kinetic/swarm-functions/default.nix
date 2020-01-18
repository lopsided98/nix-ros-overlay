
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, area-division, catkin, coverage-path, kinematics-exchanger, state-exchanger, target-monitor, task-allocation }:
buildRosPackage {
  pname = "ros-kinetic-swarm-functions";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/swarm_functions/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ec6006a233b0691e3400dfc342cc3f13f424441c6d4b547db9306af7f87fed74";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ area-division coverage-path kinematics-exchanger state-exchanger target-monitor task-allocation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The swarm functions library provides simple functionalities that enable swarm algorithms to work. It is part of the swarm library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
