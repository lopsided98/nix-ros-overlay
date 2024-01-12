
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, carrot-planner, catkin, clear-costmap-recovery, costmap-2d, dwa-local-planner, fake-localization, global-planner, map-server, move-base, move-base-msgs, move-slow-and-clear, nav-core, navfn, rotate-recovery, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-navigation";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/navigation/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "49c7c35a58254bb97dc2cfbdc9231178f766be31ffbac191b45dce2f7a2ee941";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl base-local-planner carrot-planner clear-costmap-recovery costmap-2d dwa-local-planner fake-localization global-planner map-server move-base move-base-msgs move-slow-and-clear nav-core navfn rotate-recovery voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ "BSD-&-LGPL-&-LGPL-amcl-" ];
  };
}
