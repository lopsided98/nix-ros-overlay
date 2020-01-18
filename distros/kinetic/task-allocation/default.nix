
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cpswarm-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-task-allocation";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/task_allocation/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "235436d8e702b5ccc43a1471b7fb4865949acf1048e56699299bad91794a0c10";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs cpswarm-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that offers action servers for assigning tasks between cyber physical system (CPS).'';
    license = with lib.licenses; [ asl20 ];
  };
}
