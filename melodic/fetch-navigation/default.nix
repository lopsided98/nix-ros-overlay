
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-2d, amcl, base-local-planner, navfn, slam-karto, fetch-depth-layer, catkin, rotate-recovery, move-base, move-base-msgs, voxel-grid, clear-costmap-recovery, roslaunch, fetch-maps }:
buildRosPackage {
  pname = "ros-melodic-fetch-navigation";
  version = "0.8.2-r1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_navigation/0.8.2-1.tar.gz;
    sha256 = "255b963a72a9b38af080fad62427a9f9ed35ca395ed6d944880e1e9511d678c7";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server costmap-2d amcl base-local-planner navfn slam-karto fetch-depth-layer rotate-recovery move-base move-base-msgs voxel-grid clear-costmap-recovery fetch-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files for running ROS navigation on Fetch.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
