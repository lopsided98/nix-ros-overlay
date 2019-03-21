
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, slam-karto, fetch-depth-layer, catkin, rotate-recovery, move-base, move-base-msgs, voxel-grid, clear-costmap-recovery, roslaunch, fetch-maps }:
buildRosPackage {
  pname = "ros-kinetic-fetch-navigation";
  version = "0.7.15";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_navigation/0.7.15-0.tar.gz;
    sha256 = "a0fce9b5b2b80c66160d1a3489147287213e9e0b21b16853ca34b4a39ea8e378";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn slam-karto fetch-depth-layer rotate-recovery move-base move-base-msgs voxel-grid clear-costmap-recovery fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    #license = lib.licenses.BSD;
  };
}
