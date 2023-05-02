
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-msgs, mrpt-msgs-bridge, mrpt2, nav-msgs, rosbag, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rawlog";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_rawlog/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "14ba877ca8003bbeaf5582eb485d1bc733c3ad103f370710ae827f0c6491c1cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure marker-msgs mrpt-msgs mrpt-msgs-bridge mrpt2 nav-msgs rosbag roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes to record and play MRPT rawlogs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
