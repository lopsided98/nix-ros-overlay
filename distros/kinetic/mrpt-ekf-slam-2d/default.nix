
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-bridge, mrpt-rawlog, mrpt1, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-ekf-slam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_ekf_slam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "cb638af47b9d82ac2d63d7c2d8c771da9bcb8cb0c641a0dfd2ec10ac37061fca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-bridge mrpt-rawlog mrpt1 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
