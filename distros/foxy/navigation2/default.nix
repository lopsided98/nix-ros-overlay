
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-amcl, nav2-behavior-tree, nav2-bt-navigator, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-recoveries, nav2-regulated-pure-pursuit-controller, nav2-rviz-plugins, nav2-util, nav2-voxel-grid, nav2-waypoint-follower, smac-planner }:
buildRosPackage {
  pname = "ros-foxy-navigation2";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/navigation2/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "833940d28f8f346624ee4e7672ed60038b51799459666458344aa16a7c7f83e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nav2-amcl nav2-behavior-tree nav2-bt-navigator nav2-controller nav2-core nav2-costmap-2d nav2-dwb-controller nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-recoveries nav2-regulated-pure-pursuit-controller nav2-rviz-plugins nav2-util nav2-voxel-grid nav2-waypoint-follower smac-planner ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Navigation Stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
