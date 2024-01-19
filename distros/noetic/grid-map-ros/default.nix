
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, grid-map-core, grid-map-cv, grid-map-msgs, gtest, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-grid-map-ros";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_ros/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "eb2d7ae8b21009c1059fb51ee387d053fa5e9be3b336f8d6f5d1805380113978";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs grid-map-core grid-map-cv grid-map-msgs nav-msgs rosbag roscpp sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
