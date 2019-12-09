
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-depth-layer, clear-costmap-recovery, rotate-recovery, map-server, catkin, base-local-planner, slam-karto, costmap-2d, move-base, voxel-grid, amcl, roslaunch, navfn, fetch-maps, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-navigation";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_navigation/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "255b963a72a9b38af080fad62427a9f9ed35ca395ed6d944880e1e9511d678c7";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fetch-depth-layer clear-costmap-recovery rotate-recovery map-server base-local-planner slam-karto costmap-2d move-base voxel-grid amcl navfn fetch-maps move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
