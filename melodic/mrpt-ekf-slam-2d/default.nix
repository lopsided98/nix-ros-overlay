
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-2d";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_2d/0.1.8-0.tar.gz;
    sha256 = "bef95301350da744d7b45b651a029e3de2118f75f8e0c6b85dba8d09da58878c";
  };

  buildInputs = [ mrpt-bridge tf sensor-msgs roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];
  propagatedBuildInputs = [ mrpt-bridge tf sensor-msgs mrpt-rawlog roscpp roslib nav-msgs rviz mrpt1 dynamic-reconfigure std-msgs roslaunch visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.'';
    #license = lib.licenses.BSD;
  };
}
