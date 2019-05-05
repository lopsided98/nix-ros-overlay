
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, clear-costmap-recovery, nav-core, catkin, rotate-recovery, move-base, move-base-msgs, dwa-local-planner, voxel-grid, fake-localization, robot-pose-ekf, carrot-planner, global-planner, move-slow-and-clear }:
buildRosPackage {
  pname = "ros-lunar-navigation";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/navigation/1.15.2-0.tar.gz;
    sha256 = "9c0e77dd7e9a0084a25575024072c5134597be104671ac7c6fb3a9e6ac713cc9";
  };

  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn clear-costmap-recovery nav-core rotate-recovery move-base fake-localization dwa-local-planner voxel-grid move-base-msgs robot-pose-ekf carrot-planner global-planner move-slow-and-clear ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
