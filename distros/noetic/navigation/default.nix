
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, carrot-planner, catkin, clear-costmap-recovery, costmap-2d, dwa-local-planner, fake-localization, global-planner, map-server, move-base, move-base-msgs, move-slow-and-clear, nav-core, navfn, rotate-recovery, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-navigation";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/navigation/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "4115399b1b834cc194d48d0cd27645cb0378f0f977b58364a56a3289ac63f855";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl base-local-planner carrot-planner clear-costmap-recovery costmap-2d dwa-local-planner fake-localization global-planner map-server move-base move-base-msgs move-slow-and-clear nav-core navfn rotate-recovery voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
