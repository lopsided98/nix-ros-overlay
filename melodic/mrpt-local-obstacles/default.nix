
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, mrpt1, visualization-msgs, dynamic-reconfigure, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-local-obstacles";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_local_obstacles/0.1.24-0.tar.gz;
    sha256 = "15f6abde9e318e1e0afaf27bc6cc20bd84943a5d14cb0f22f509686bf4a492a6";
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
