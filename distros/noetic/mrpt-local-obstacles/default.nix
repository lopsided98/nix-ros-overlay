
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libros-bridge, mrpt-libtclap, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-local-obstacles";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_local_obstacles/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "cea3025462dbde0671720bf19ffa8b889cbac8840205518a94183ed1f4f7980d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mp2p-icp mrpt-libgui mrpt-libmaps mrpt-libros-bridge mrpt-libtclap roscpp sensor-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
