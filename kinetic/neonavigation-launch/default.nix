
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.3.1-0.tar.gz;
    sha256 = "081549df71e6e5377341a714fa64d3fb4e5672b6c9ae6b7a71ee8b969a48e15b";
  };

  propagatedBuildInputs = [ map-server costmap-cspace trajectory-tracker-rviz-plugins planner-cspace safety-limiter trajectory-tracker tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    #license = lib.licenses.BSD;
  };
}
