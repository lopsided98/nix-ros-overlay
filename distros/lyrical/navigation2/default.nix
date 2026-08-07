
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-amcl, nav2-behavior-tree, nav2-behaviors, nav2-bt-navigator, nav2-collision-monitor, nav2-common, nav2-constrained-smoother, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-graceful-controller, nav2-lifecycle-manager, nav2-loopback-sim, nav2-map-server, nav2-mppi-controller, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-regulated-pure-pursuit-controller, nav2-ros-common, nav2-rotation-shim-controller, nav2-route, nav2-rviz-plugins, nav2-simple-commander, nav2-smac-planner, nav2-smoother, nav2-theta-star-planner, nav2-util, nav2-velocity-smoother, nav2-voxel-grid, nav2-waypoint-follower, opennav-docking, opennav-docking-bt, opennav-docking-core, opennav-following }:
buildRosPackage {
  pname = "ros-lyrical-navigation2";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/navigation2/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "9bfe224a5c7377b3f7dc12bf9a445010f3c8408c851d342e9aeea0864da295f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ nav2-amcl nav2-behavior-tree nav2-behaviors nav2-bt-navigator nav2-collision-monitor nav2-constrained-smoother nav2-controller nav2-core nav2-costmap-2d nav2-dwb-controller nav2-graceful-controller nav2-lifecycle-manager nav2-loopback-sim nav2-map-server nav2-mppi-controller nav2-msgs nav2-navfn-planner nav2-planner nav2-regulated-pure-pursuit-controller nav2-ros-common nav2-rotation-shim-controller nav2-route nav2-rviz-plugins nav2-simple-commander nav2-smac-planner nav2-smoother nav2-theta-star-planner nav2-util nav2-velocity-smoother nav2-voxel-grid nav2-waypoint-follower opennav-docking opennav-docking-bt opennav-docking-core opennav-following ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Navigation Stack";
    license = with lib.licenses; [ asl20 ];
  };
}
