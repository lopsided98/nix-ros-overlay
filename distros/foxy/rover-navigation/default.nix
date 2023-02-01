
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, launch, launch-ros, nav2-amcl, nav2-behavior-tree, nav2-bt-navigator, nav2-controller, nav2-core, nav2-costmap-2d, nav2-dwb-controller, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-navfn-planner, nav2-planner, nav2-recoveries, nav2-rviz-plugins, nav2-util, nav2-voxel-grid, nav2-waypoint-follower, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-rover-navigation";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "roverrobotics_ros2-release";
        rev = "release/foxy/rover_navigation/0.1.1-2";
        sha256 = "sha256-u9ndIYscN6o7qvbbp45jm5N74YkiThzsZUxwtBbv7QA=";
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
