
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, carrot-planner, clear-costmap-recovery, move-slow-and-clear, map-server, catkin, base-local-planner, costmap-2d, nav-core, fake-localization, global-planner, move-base, dwa-local-planner, voxel-grid, amcl, navfn, rotate-recovery, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-navigation";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/navigation/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "c55bd433b5ad55822926ea621be0fa6f4695bb9795ecdd4574295ae9372fb203";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ clear-costmap-recovery carrot-planner move-slow-and-clear map-server base-local-planner costmap-2d nav-core fake-localization global-planner move-base dwa-local-planner voxel-grid amcl navfn rotate-recovery move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A 2D navigation stack that takes in information from odometry, sensor
        streams, and a goal pose and outputs safe velocity commands that are sent
        to a mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
