
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpswarm-msgs, catkin, smach-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-state-exchanger";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_functions-release/archive/release/kinetic/state_exchanger/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6ccdd3c450b331704b4700c8346a92eaf66806fb44d7914cee25cf377f5940ac";
  };

  buildType = "catkin";
  buildInputs = [ cpswarm-msgs smach-msgs roscpp ];
  propagatedBuildInputs = [ cpswarm-msgs smach-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that exchanges behavioral states between multiple cyber physical systems (CPSs) in a swarm.'';
    license = with lib.licenses; [ asl20 ];
  };
}
