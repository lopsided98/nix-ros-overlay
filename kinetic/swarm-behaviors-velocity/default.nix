
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, roscpp, swarm-behaviors-position }:
buildRosPackage {
  pname = "ros-kinetic-swarm-behaviors-velocity";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/swarm_behaviors_velocity/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "ea8a280e756a04cff2842ff265317e90e1a8636b9f1d4c75fdb1f69bd2cbd90f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs roscpp swarm-behaviors-position ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that provides velocity related functionalities.'';
    license = with lib.licenses; [ asl20 ];
  };
}
