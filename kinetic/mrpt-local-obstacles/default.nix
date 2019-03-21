
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, mrpt1, visualization-msgs, dynamic-reconfigure, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-local-obstacles";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_local_obstacles/0.1.23-0.tar.gz;
    sha256 = "9d52ed170b76a711eb1c085239a6fd440cd217355eaa89351f96ee739562bbb9";
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
