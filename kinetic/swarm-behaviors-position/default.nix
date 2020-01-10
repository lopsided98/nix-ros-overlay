
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-swarm-behaviors-position";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/swarm_behaviors_position/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b5ad7eabea9ffd293174d425e79bd49fbe6c5dfb07f2e1b2be184e2429d82125";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that provides position related functionalities.'';
    license = with lib.licenses; [ asl20 ];
  };
}
