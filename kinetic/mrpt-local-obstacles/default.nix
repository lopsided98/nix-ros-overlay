
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, mrpt1, visualization-msgs, dynamic-reconfigure, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-local-obstacles";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_local_obstacles/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "e1e6fcb4cfede77795b36755670e4c1601c96fa8ab377e0332652ba2b36c434d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp mrpt1 visualization-msgs dynamic-reconfigure mrpt-bridge tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp mrpt1 visualization-msgs dynamic-reconfigure mrpt-bridge tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
