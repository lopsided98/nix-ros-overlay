
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt2, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-local-obstacles";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_local_obstacles/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c5c40f46c0e038cbff0acfbe206d2b43d43a3ee2606acf02ca3d6c5489e72c92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-bridge mrpt2 roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
