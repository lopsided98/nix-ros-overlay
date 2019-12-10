
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, roscpp, swarmros, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-target-monitor";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/target_monitor/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "543537106fa90939a2c368947fec9b62db886b170d82e2ecf007a1b319ef9468";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs roscpp swarmros tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that manages information about targets in a swarm of cyber physical systems (CPSs).'';
    license = with lib.licenses; [ asl20 ];
  };
}
