
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, roscpp, smach-msgs }:
buildRosPackage {
  pname = "ros-kinetic-state-exchanger";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/state_exchanger/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8217d057f69a883ecef8385f234358d46d09c9aae5a4612513e80f9d680da8bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs roscpp smach-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that exchanges behavioral states between multiple cyber physical systems (CPSs) in a swarm.'';
    license = with lib.licenses; [ asl20 ];
  };
}
