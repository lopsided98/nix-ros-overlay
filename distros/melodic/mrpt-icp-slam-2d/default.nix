
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt-rawlog, mrpt1, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-icp-slam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_icp_slam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "94d220bc8036d748aa9003080ad6a11dc8dd38b039efbd097549075c0146c971";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-bridge mrpt-rawlog mrpt1 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
