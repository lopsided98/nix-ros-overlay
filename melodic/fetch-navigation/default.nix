
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, slam-karto, fetch-depth-layer, catkin, rotate-recovery, move-base, move-base-msgs, voxel-grid, clear-costmap-recovery, roslaunch, fetch-maps }:
buildRosPackage {
  pname = "ros-melodic-fetch-navigation";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_navigation/0.8.0-0.tar.gz;
    sha256 = "4436574cf785bf8a33fe225041d8d89bcddb87c9f79dd84683839d3c5bf48b20";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn slam-karto fetch-depth-layer rotate-recovery move-base move-base-msgs voxel-grid clear-costmap-recovery fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    #license = lib.licenses.BSD;
  };
}
