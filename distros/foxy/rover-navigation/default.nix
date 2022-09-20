
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, launch, launch-ros, nav2-amcl, nav2-behavior-tree, nav2-bt-navigator, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-recoveries, nav2-rviz-plugins, nav2-util, nav2-voxel-grid, nav2-waypoint-follower, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-rover-navigation";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_navigation/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "0344f646bddd472b1661821585166bb0b3eab2c8389b8e703cba57d15e862141";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher launch launch-ros nav2-amcl nav2-behavior-tree nav2-bt-navigator nav2-controller nav2-core nav2-costmap-2d nav2-dwb-controller nav2-lifecycle-manager nav2-map-server nav2-msgs nav2-navfn-planner nav2-planner nav2-recoveries nav2-rviz-plugins nav2-util nav2-voxel-grid nav2-waypoint-follower rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains Rover navigation launch files'';
    license = with lib.licenses; [ bsd3 ];
  };
}
