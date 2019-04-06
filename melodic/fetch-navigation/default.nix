
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, slam-karto, fetch-depth-layer, catkin, rotate-recovery, move-base, move-base-msgs, voxel-grid, clear-costmap-recovery, roslaunch, fetch-maps }:
buildRosPackage {
  pname = "ros-melodic-fetch-navigation";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_navigation/0.8.1-0.tar.gz;
    sha256 = "533785a8a7b95afaa733d8670b138f897fcf5472326aac258478f23e88fbe129";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn slam-karto fetch-depth-layer rotate-recovery move-base move-base-msgs voxel-grid clear-costmap-recovery fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    #license = lib.licenses.BSD;
  };
}
