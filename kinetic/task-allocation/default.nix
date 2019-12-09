
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, actionlib, cpswarm-msgs, actionlib-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-task-allocation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/task_allocation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cc059f8347be9d0f24d6135dcd1e763e44fea2e63a82c9d3b9d9a4f61dd854ff";
  };

  buildType = "catkin";
  buildInputs = [ cpswarm-msgs actionlib actionlib-msgs roscpp ];
  propagatedBuildInputs = [ cpswarm-msgs actionlib actionlib-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that offers action servers for assigning tasks between cyber physical system (CPS).'';
    license = with lib.licenses; [ asl20 ];
  };
}
