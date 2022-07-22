
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-launch";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_launch/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "5decc58e1f516ee9e83e9043a5472501af2fe83b5468322fa591106c9e35fa97";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
