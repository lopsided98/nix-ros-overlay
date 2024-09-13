
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-libgui, mrpt-libmaps, mrpt-libros-bridge, mrpt-libtclap, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-local-obstacles";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_local_obstacles/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "055f599d64ad8502c352b5f29fa73861eba39e9e33d2006bdf22f464043e57f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-libgui mrpt-libmaps mrpt-libros-bridge mrpt-libtclap roscpp sensor-msgs tf2 tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
