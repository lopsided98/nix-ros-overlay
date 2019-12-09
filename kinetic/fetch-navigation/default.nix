
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-depth-layer, clear-costmap-recovery, fetch-maps, map-server, catkin, base-local-planner, slam-karto, costmap-2d, move-base, voxel-grid, amcl, roslaunch, navfn, rotate-recovery, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fetch-navigation";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_navigation/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "a0fce9b5b2b80c66160d1a3489147287213e9e0b21b16853ca34b4a39ea8e378";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fetch-depth-layer clear-costmap-recovery fetch-maps map-server base-local-planner slam-karto costmap-2d move-base voxel-grid amcl navfn rotate-recovery move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
