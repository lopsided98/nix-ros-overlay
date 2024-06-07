
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-rawlog, mrpt2, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-icp-slam-2d";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_icp_slam_2d/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "d4c0ff2af024ef51f5ae79ec4e99aedcddfeaf82c04771ce376e050892c7f81f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-rawlog mrpt2 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
