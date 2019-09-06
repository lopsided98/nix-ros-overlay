
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "8a68d5d782c749187a367a74210fca326ceb0063838ba45cf994a3b5543e2b5a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-server costmap-cspace planner-cspace trajectory-tracker-rviz-plugins safety-limiter tf2-ros trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
