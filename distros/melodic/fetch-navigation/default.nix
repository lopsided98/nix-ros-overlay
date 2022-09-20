
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, clear-costmap-recovery, costmap-2d, fetch-depth-layer, fetch-maps, map-server, move-base, move-base-msgs, navfn, roslaunch, rotate-recovery, slam-karto, voxel-grid }:
buildRosPackage {
  pname = "ros-melodic-fetch-navigation";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_navigation/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "95caf008d946b5af25d11443d21a5cbb791185b54f91825b928894e27706ecdb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner clear-costmap-recovery costmap-2d fetch-depth-layer fetch-maps map-server move-base move-base-msgs navfn rotate-recovery slam-karto voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
