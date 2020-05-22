
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "6140c24f85bfde25e2e1e4bee98274c8f309b04fcd599ac1a396d3a8fd468547";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
