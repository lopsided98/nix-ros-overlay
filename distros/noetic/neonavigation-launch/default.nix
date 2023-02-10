
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-launch";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_launch/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "0c36d6382e432a8b7f9b904fba97f69a3a51b8830bae9112697b5bf1283cc9b4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
