
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, mrpt1, visualization-msgs, dynamic-reconfigure, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-local-obstacles";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_local_obstacles/0.1.22-0.tar.gz;
    sha256 = "40b6c7ce3bb0cd3b6cfe48d215c391cda92e40e26820a06664c041964fbfa893";
  };

  propagatedBuildInputs = [ mrpt1 mrpt-bridge visualization-msgs dynamic-reconfigure sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin mrpt1 mrpt-bridge visualization-msgs dynamic-reconfigure sensor-msgs tf roscpp ];

  meta = {
    description = ''Maintains a local obstacle map (point cloud,
   voxels or occupancy grid) from recent sensor readings within a
   configurable time window.'';
    #license = lib.licenses.BSD;
  };
}
