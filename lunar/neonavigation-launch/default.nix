
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-launch";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/neonavigation_launch/0.4.0-1.tar.gz;
    sha256 = "6e24655af5cd0641be8d1783a6821cdbb79bfe35bc1a1dc39fc351abff32c5ed";
  };

  propagatedBuildInputs = [ map-server costmap-cspace trajectory-tracker-rviz-plugins planner-cspace safety-limiter tf2-ros trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
