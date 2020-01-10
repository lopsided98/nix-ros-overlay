
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, nav-msgs, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-coverage-path";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/coverage_path/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "357eb5b7ac47f29f5fa009322f0f06184d30e7a63179e3d91ab604aac10ebab5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs nav-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that generates an optimal path to cover a given area with a cyber physical system (CPS).'';
    license = with lib.licenses; [ asl20 ];
  };
}
