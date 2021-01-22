
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, grid-map-core, grid-map-cv, grid-map-msgs, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-ros";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_ros/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "7e49f6f70334a0e9667ac56701bbe9e63d0eebd3e35b78c426bfc82bda1f752a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-msgs nav-msgs rosbag roscpp sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
