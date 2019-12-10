
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, nav-msgs, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-coverage-path";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/coverage_path/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a67ebc957c654908124170d240c75382d86734be4d813a48b57644155a0fac17";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs nav-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that generates an optimal path to cover a given area with a cyber physical system (CPS).'';
    license = with lib.licenses; [ asl20 ];
  };
}
