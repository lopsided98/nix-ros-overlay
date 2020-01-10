
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cpswarm-msgs, random-numbers, roscpp, swarm-behaviors-position }:
buildRosPackage {
  pname = "ros-kinetic-ugv-random-walk";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/ugv_random_walk/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b7700d567af9a97a72dd6f6ed7a85d7cf5114a63a012bbf774fe74a41dd7e9ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cpswarm-msgs random-numbers roscpp swarm-behaviors-position ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package performs random walk coverage with an unmanned ground vehicle (UGV).'';
    license = with lib.licenses; [ asl20 ];
  };
}
