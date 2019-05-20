
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.4.0-1.tar.gz;
    sha256 = "0b377fdb95d79cbb87fb6a60a7779b1c4168ed0e6d3e0223256ef4cd9f0beabf";
  };

  propagatedBuildInputs = [ map-server costmap-cspace trajectory-tracker-rviz-plugins planner-cspace safety-limiter tf2-ros trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
