
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-icp-slam-2d";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_icp_slam_2d/0.1.8-0.tar.gz;
    sha256 = "a758de5b3c03eb824046bbc33e13759b0c233f87583b39f73b6689ba717a3846";
  };

  propagatedBuildInputs = [ mrpt-bridge tf sensor-msgs mrpt-rawlog roscpp roslib nav-msgs rviz mrpt1 dynamic-reconfigure std-msgs roslaunch visualization-msgs ];
  nativeBuildInputs = [ mrpt-bridge tf sensor-msgs catkin roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    #license = lib.licenses.BSD;
  };
}
