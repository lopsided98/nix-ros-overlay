
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, cmake-modules, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-3d";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_3d/0.1.8-0.tar.gz;
    sha256 = "033e62947e318122335f9c223589f340fa8425204178da6b817ea933c20973c5";
  };

  buildInputs = [ mrpt-bridge cmake-modules tf sensor-msgs roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];
  propagatedBuildInputs = [ mrpt-bridge cmake-modules tf sensor-msgs mrpt-rawlog roscpp roslib nav-msgs rviz mrpt1 dynamic-reconfigure std-msgs roslaunch visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.'';
    #license = lib.licenses.BSD;
  };
}
