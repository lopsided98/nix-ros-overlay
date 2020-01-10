
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, roscpp, swarmros, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-target-monitor";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/target_monitor/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6c77992ee6e908a2d3885704b4e05fdcdb7453ffb9046b02a1c5e2deac89f3ae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs roscpp swarmros tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that manages information about targets in a swarm of cyber physical systems (CPSs).'';
    license = with lib.licenses; [ asl20 ];
  };
}
