
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cpswarm-msgs, roscpp, swarm-behaviors-position }:
buildRosPackage {
  pname = "ros-kinetic-uav-simple-tracking";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/uav_simple_tracking/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "dc9171aa84fb29faa2dad166fa8402265ab16c7ce561d40778dc4fb305bd7ef5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cpswarm-msgs roscpp swarm-behaviors-position ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that tracks a target with an unmanned aerial vehicle (UAV).'';
    license = with lib.licenses; [ asl20 ];
  };
}
