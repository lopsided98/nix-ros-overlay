
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-msgs, mrpt-msgs-bridge, mrpt2, nav-msgs, rosbag, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-mrpt-rawlog";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_rawlog/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "7cc37cd2aa8528fa61b75460299e2c5a1829b51e0082926dde1ba482c04b936b";
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
