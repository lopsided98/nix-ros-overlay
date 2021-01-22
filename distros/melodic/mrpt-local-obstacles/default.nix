
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt1, roscpp, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-local-obstacles";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_local_obstacles/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "62af298ee1f3352bf32f91529121c5fd2b7976a5c6d9b6e5f0a22cee91dfe9b9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-bridge mrpt1 roscpp sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
