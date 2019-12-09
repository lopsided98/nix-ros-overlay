
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, costmap-cspace-msgs, rosunit, tf2, nav-msgs, rostest, sensor-msgs, planner-cspace-msgs, tf2-geometry-msgs, trajectory-tracker-msgs, trajectory-tracker, tf2-ros, move-base-msgs, std-srvs, catkin, neonavigation-common, roscpp, trajectory-msgs, map-server, actionlib, roslint, diagnostic-updater, costmap-cspace }:
buildRosPackage {
  pname = "ros-kinetic-planner-cspace";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/planner_cspace/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "be5e47c3d0f1a7cffea7931ad7f27d68334068d17b3a2fe14e61da6fabe0d35c";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-srvs costmap-cspace-msgs actionlib planner-cspace-msgs roscpp neonavigation-common tf2-geometry-msgs trajectory-tracker-msgs tf2 diagnostic-updater nav-msgs costmap-cspace tf2-ros move-base-msgs ];
  checkInputs = [ map-server roslint rosunit trajectory-tracker rostest ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-srvs costmap-cspace-msgs planner-cspace-msgs actionlib roscpp neonavigation-common tf2-geometry-msgs trajectory-tracker-msgs tf2 diagnostic-updater nav-msgs costmap-cspace tf2-ros move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space planner for mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
