
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, mrpt1, visualization-msgs, dynamic-reconfigure, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-local-obstacles";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_local_obstacles/0.1.24-0.tar.gz;
    sha256 = "25652c6276091be9db7a0bb623a3945bebaef54e93ea92b199b636416d1f5ac6";
  };

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
