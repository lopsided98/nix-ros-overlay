
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpswarm-msgs, geometry-msgs, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-kinematics-exchanger";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/kinematics_exchanger/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "02baec3d78be0b19ae340d3e1dd2f2a8798ea284ec36109f74253e1c2a3bb1fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpswarm-msgs geometry-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that exchanges kinematic properties such as velocity or position between multiple cyber physical systems (CPSs) in a swarm.'';
    license = with lib.licenses; [ asl20 ];
  };
}
