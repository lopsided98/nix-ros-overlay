
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, nav-msgs, roscpp, swarmros }:
buildRosPackage {
  pname = "ros-kinetic-area-division";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/area_division/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "705892330f17a4eaba1e6483bece0282f2e1cb0ed94b684ade002ae1d1127ed5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs nav-msgs roscpp swarmros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that divides the available environment area among multiple cyber physical systems (CPSs) in a swarm.'';
    license = with lib.licenses; [ asl20 ];
  };
}
