
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-libgui, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, mrpt-msgs-bridge, nav-msgs, rosbag, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-mrpt-rawlog";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_rawlog/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "6b034b0ae1c204c3062de2547cc79edd6b7e1a60f2c7e4d66fc7fd9e9b4d7c00";
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
