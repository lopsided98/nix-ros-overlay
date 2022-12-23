
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-amcl, nav2-behavior-tree, nav2-behaviors, nav2-bt-navigator, nav2-collision-monitor, nav2-constrained-smoother, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-regulated-pure-pursuit-controller, nav2-rotation-shim-controller, nav2-rviz-plugins, nav2-simple-commander, nav2-smac-planner, nav2-smoother, nav2-theta-star-planner, nav2-util, nav2-velocity-smoother, nav2-voxel-grid, nav2-waypoint-follower }:
buildRosPackage {
  pname = "ros-humble-navigation2";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/navigation2/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "dbed2b3019a15e148b1830617b691c8da6380a8dace57a568350a8114fa0f3a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-amcl nav2-behavior-tree nav2-behaviors nav2-bt-navigator nav2-collision-monitor nav2-constrained-smoother nav2-controller nav2-core nav2-costmap-2d nav2-dwb-controller nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-regulated-pure-pursuit-controller nav2-rotation-shim-controller nav2-rviz-plugins nav2-simple-commander nav2-smac-planner nav2-smoother nav2-theta-star-planner nav2-util nav2-velocity-smoother nav2-voxel-grid nav2-waypoint-follower ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
