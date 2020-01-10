
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cpswarm-msgs, random-numbers, roscpp, swarm-behaviors-position }:
buildRosPackage {
  pname = "ros-kinetic-uav-random-direction";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/uav_random_direction/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "8785c633dd1f74b34597ee376e5a2d1e120c017bd5422cf37ae55b6a79a6b1eb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cpswarm-msgs random-numbers roscpp swarm-behaviors-position ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that performs random direction coverage with an unmanned aerial vehicle (UAV).'';
    license = with lib.licenses; [ asl20 ];
  };
}
