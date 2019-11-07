
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-icp-slam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_icp_slam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "42fee3a8312a91dd20d6b6eb0a42e3fd7d30f7619ffafd42305df715ed5a5a25";
  };

  buildType = "catkin";
  buildInputs = [ mrpt-bridge tf sensor-msgs roslib nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ mrpt-bridge sensor-msgs mrpt-rawlog roscpp roslib nav-msgs mrpt1 rviz visualization-msgs dynamic-reconfigure std-msgs roslaunch tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
