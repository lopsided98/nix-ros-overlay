
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-amcl, nav2-behavior-tree, nav2-bt-navigator, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-recoveries, nav2-regulated-pure-pursuit-controller, nav2-rotation-shim-controller, nav2-rviz-plugins, nav2-smac-planner, nav2-theta-star-planner, nav2-util, nav2-voxel-grid, nav2-waypoint-follower }:
buildRosPackage {
  pname = "ros-galactic-navigation2";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/navigation2/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "ab4a33f8ae23a90c2ddb3b6cd6374aa3f2cfdca9ae4607a93a192c0d2163e35d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-amcl nav2-behavior-tree nav2-bt-navigator nav2-controller nav2-core nav2-costmap-2d nav2-dwb-controller nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-recoveries nav2-regulated-pure-pursuit-controller nav2-rotation-shim-controller nav2-rviz-plugins nav2-smac-planner nav2-theta-star-planner nav2-util nav2-voxel-grid nav2-waypoint-follower ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
