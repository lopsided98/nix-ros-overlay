
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, geometry-msgs, rosbag, cv-bridge, sensor-msgs, catkin, roscpp, nav-msgs, visualization-msgs, std-msgs, grid-map-msgs, tf, grid-map-cv }:
buildRosPackage {
  pname = "ros-melodic-grid-map-ros";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_ros/1.6.1-0.tar.gz;
    sha256 = "bf681f58909865945e276e25c9762d8b641931b03531e92d26c1dd9dc22dcd25";
  };

  buildInputs = [ grid-map-core geometry-msgs rosbag sensor-msgs cv-bridge roscpp nav-msgs visualization-msgs std-msgs grid-map-msgs tf grid-map-cv ];
  propagatedBuildInputs = [ grid-map-core geometry-msgs rosbag sensor-msgs cv-bridge roscpp nav-msgs visualization-msgs std-msgs grid-map-msgs tf grid-map-cv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
