
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, costmap-cspace, costmap-cspace-msgs, diagnostic-updater, geometry-msgs, map-server, move-base-msgs, nav-msgs, neonavigation-common, planner-cspace-msgs, roscpp, roslint, rostest, rosunit, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs, trajectory-tracker, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-kinetic-planner-cspace";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/planner_cspace/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6c79b30b4dce525d1def8d5c00ee78a17cf1d2b509168812c8048dc3df631aa9";
  };

  buildType = "catkin";
  checkInputs = [ map-server roslint rostest rosunit trajectory-tracker ];
  propagatedBuildInputs = [ actionlib costmap-cspace costmap-cspace-msgs diagnostic-updater geometry-msgs move-base-msgs nav-msgs neonavigation-common planner-cspace-msgs roscpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space planner for mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
