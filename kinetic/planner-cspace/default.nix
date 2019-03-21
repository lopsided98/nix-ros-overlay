
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-tracker-msgs, actionlib, trajectory-tracker, geometry-msgs, map-server, costmap-cspace, roslint, neonavigation-common, planner-cspace-msgs, std-srvs, tf2-geometry-msgs, trajectory-msgs, catkin, tf2-ros, move-base-msgs, nav-msgs, roscpp, costmap-cspace-msgs, sensor-msgs, diagnostic-updater, rostest, tf2, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-planner-cspace";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/planner_cspace/0.3.1-0.tar.gz;
    sha256 = "5dc1d978f37423bedb8306b8591d9fe0bb4a108196860137235db35a6cce66b7";
  };

  checkInputs = [ map-server rostest roslint trajectory-tracker rosunit ];
  propagatedBuildInputs = [ std-srvs costmap-cspace tf2-geometry-msgs trajectory-msgs costmap-cspace-msgs sensor-msgs tf2-ros diagnostic-updater move-base-msgs tf2 nav-msgs neonavigation-common trajectory-tracker-msgs planner-cspace-msgs actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs costmap-cspace tf2-geometry-msgs trajectory-msgs costmap-cspace-msgs sensor-msgs catkin tf2-ros diagnostic-updater move-base-msgs tf2 nav-msgs neonavigation-common trajectory-tracker-msgs planner-cspace-msgs actionlib roscpp geometry-msgs ];

  meta = {
    description = ''3-dof configuration space planner for mobile robot'';
    #license = lib.licenses.BSD;
  };
}
