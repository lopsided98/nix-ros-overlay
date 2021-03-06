
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, clear-costmap-recovery, costmap-2d, fetch-depth-layer, fetch-maps, map-server, move-base, move-base-msgs, navfn, roslaunch, rotate-recovery, slam-karto, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-fetch-navigation";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_navigation/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "b9d6ed800f2c34e96cb15e4c846dafca23fd60f95fd8fa9889b4c9ff141fbe98";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner clear-costmap-recovery costmap-2d fetch-depth-layer fetch-maps map-server move-base move-base-msgs navfn rotate-recovery slam-karto voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
