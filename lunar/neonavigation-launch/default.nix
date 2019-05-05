
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-launch";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/neonavigation_launch/0.3.1-0.tar.gz;
    sha256 = "536b5f9c8dc66318ba9cb223cc61e2e2fe79e1eeb11b16da292ede0b33a2946d";
  };

  propagatedBuildInputs = [ map-server costmap-cspace trajectory-tracker-rviz-plugins planner-cspace safety-limiter tf2-ros trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
