
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-tracker-msgs, actionlib, trajectory-tracker, geometry-msgs, map-server, costmap-cspace, roslint, neonavigation-common, planner-cspace-msgs, std-srvs, tf2-geometry-msgs, trajectory-msgs, catkin, tf2-ros, move-base-msgs, nav-msgs, roscpp, costmap-cspace-msgs, sensor-msgs, diagnostic-updater, tf2, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-planner-cspace";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/planner_cspace/0.4.2-1.tar.gz;
    sha256 = "7903a8e82aaeaa043f87583e2f5cae92d5146e8cd8b0116a992f36bb4b8fb5a1";
  };

  buildInputs = [ std-srvs costmap-cspace tf2-geometry-msgs costmap-cspace-msgs trajectory-msgs sensor-msgs tf2-ros diagnostic-updater move-base-msgs tf2 nav-msgs neonavigation-common trajectory-tracker-msgs planner-cspace-msgs actionlib roscpp geometry-msgs ];
  checkInputs = [ map-server roslint rostest trajectory-tracker rosunit ];
  propagatedBuildInputs = [ std-srvs costmap-cspace tf2-geometry-msgs costmap-cspace-msgs trajectory-msgs sensor-msgs tf2-ros diagnostic-updater move-base-msgs tf2 nav-msgs neonavigation-common trajectory-tracker-msgs planner-cspace-msgs actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space planner for mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
