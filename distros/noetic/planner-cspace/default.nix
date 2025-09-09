
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, costmap-cspace, costmap-cspace-msgs, diagnostic-updater, dynamic-reconfigure, geometry-msgs, map-server, move-base-msgs, nav-msgs, neonavigation-common, neonavigation-metrics-msgs, planner-cspace-msgs, roscpp, roslint, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, trajectory-tracker, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-planner-cspace";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/planner_cspace/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "6f681f142f4e5de47adc83b9249977887d01cc7279d993d763571aa0d85ccdfe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ map-server roslint rostest trajectory-tracker ];
  propagatedBuildInputs = [ actionlib costmap-cspace costmap-cspace-msgs diagnostic-updater dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs neonavigation-common neonavigation-metrics-msgs planner-cspace-msgs roscpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs trajectory-tracker trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "3-dof configuration space planner for mobile robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
