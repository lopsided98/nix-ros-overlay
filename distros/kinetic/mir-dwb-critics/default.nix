
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-queue, dwb-critics, dwb-local-planner, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid-iterators, pluginlib, pythonPackages, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-dwb-critics";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_dwb_critics/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "ee3bdf648805ee71c40b7e918ca9a039962490bfa41973800c65e5ff99892194";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles costmap-queue dwb-critics dwb-local-planner geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid-iterators pluginlib pythonPackages.matplotlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
