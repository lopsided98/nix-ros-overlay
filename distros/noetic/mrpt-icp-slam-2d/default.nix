
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-rawlog, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-icp-slam-2d";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_icp_slam_2d/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "25b7b323e6126c56f24be8270a30d072a86b6921653e1fa011b8d87772ee23d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-rawlog nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
