
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, clear-costmap-recovery, nav-core, catkin, rotate-recovery, move-base, move-base-msgs, dwa-local-planner, voxel-grid, fake-localization, carrot-planner, global-planner, move-slow-and-clear }:
buildRosPackage {
  pname = "ros-melodic-navigation";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/navigation/1.16.2-0.tar.gz;
    sha256 = "f95e40e466dbf7535ad26e1bc94630a9e75c337b3b6e0730e7576e871f99c3b1";
  };

  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn clear-costmap-recovery nav-core rotate-recovery move-base fake-localization dwa-local-planner voxel-grid move-base-msgs carrot-planner global-planner move-slow-and-clear ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
