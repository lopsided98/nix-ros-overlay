
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, clear-costmap-recovery, nav-core, catkin, rotate-recovery, move-base, move-base-msgs, dwa-local-planner, voxel-grid, fake-localization, carrot-planner, robot-pose-ekf, global-planner, move-slow-and-clear }:
buildRosPackage {
  pname = "ros-kinetic-navigation";
  version = "1.14.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.4-0.tar.gz";
    name = "1.14.4-0.tar.gz";
    sha256 = "ff980e3a37e75bbaa31a5bacdcbd5e6f27f96e011c2d84f8f0dc1266928d09e0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn clear-costmap-recovery nav-core rotate-recovery move-base move-base-msgs dwa-local-planner voxel-grid fake-localization carrot-planner robot-pose-ekf global-planner move-slow-and-clear ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
