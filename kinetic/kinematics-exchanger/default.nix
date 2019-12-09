
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, catkin, roscpp, cpswarm-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-kinematics-exchanger";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/kinematics_exchanger/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3eee44d062a9f3d98ac8b203cbf7d9d1ab115621fe991160cf79d49289853f2b";
  };

  buildType = "catkin";
  buildInputs = [ cpswarm-msgs geometry-msgs roscpp tf2 ];
  propagatedBuildInputs = [ cpswarm-msgs tf2 geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that exchanges kinematic properties such as velocity or position between multiple cyber physical systems (CPSs) in a swarm.'';
    license = with lib.licenses; [ asl20 ];
  };
}
