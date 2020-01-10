
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cpswarm-msgs, roscpp, swarm-behaviors-position }:
buildRosPackage {
  pname = "ros-kinetic-uav-local-coverage";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/cpswarm/swarm_behaviors-release/archive/release/kinetic/uav_local_coverage/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "56adc7c2e9a882228bf8f4cb8c215c4e2576cef8f67582e1b593ab0183009494";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cpswarm-msgs roscpp swarm-behaviors-position ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that performs local coverage with an unmanned aerial vehicle (UAV).'';
    license = with lib.licenses; [ asl20 ];
  };
}
