
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, carrot-planner, clear-costmap-recovery, move-slow-and-clear, map-server, catkin, base-local-planner, costmap-2d, nav-core, fake-localization, global-planner, robot-pose-ekf, move-base, voxel-grid, dwa-local-planner, amcl, navfn, rotate-recovery, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-navigation";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "6dec46f3b86fd05858e9672cf49203cfb7a8e491fd1a40e628f997f3d1bc333d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ clear-costmap-recovery carrot-planner move-slow-and-clear map-server base-local-planner costmap-2d nav-core fake-localization global-planner robot-pose-ekf move-base voxel-grid dwa-local-planner amcl navfn rotate-recovery move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
