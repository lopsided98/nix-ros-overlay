
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-libgui, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, mrpt-msgs-bridge, nav-msgs, rosbag, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-mrpt-rawlog";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_rawlog/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "e32d470a6467311f936791e2c4260f12fcc12b82bb4a028adba59d12cb2a52b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure marker-msgs mrpt-libgui mrpt-libobs mrpt-libros-bridge mrpt-msgs mrpt-msgs-bridge nav-msgs rosbag roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides nodes to record and play MRPT rawlogs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
