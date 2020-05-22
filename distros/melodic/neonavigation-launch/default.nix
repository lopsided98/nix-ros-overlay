
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-launch";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation_launch/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "a5de742de2c6cd44cd89f3949ccc5f26f0722f0fa15cde52b8f82756f13ddac4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
