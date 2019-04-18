
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-icp-slam-2d";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_icp_slam_2d/0.1.9-0.tar.gz;
    sha256 = "fee14f032a7d1672f261e38211eef81a2d56664915940ce2533af0aa87c0b15f";
  };

  buildInputs = [ mrpt-bridge tf sensor-msgs roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];
  propagatedBuildInputs = [ mrpt-bridge tf sensor-msgs mrpt-rawlog roscpp roslib nav-msgs rviz mrpt1 dynamic-reconfigure std-msgs roslaunch visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    #license = lib.licenses.BSD;
  };
}
