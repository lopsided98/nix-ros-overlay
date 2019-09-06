
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, cmake-modules, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-3d";
  version = "0.1.9";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_3d/0.1.9-0.tar.gz";
    name = "0.1.9-0.tar.gz";
    sha256 = "3af75a1f55059892760c9d6d5939c46e48d9d9bc4b6087c0755209bafba88039";
  };

  buildType = "catkin";
  buildInputs = [ mrpt-bridge cmake-modules tf sensor-msgs roslib nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ mrpt-bridge cmake-modules sensor-msgs mrpt-rawlog roscpp roslib nav-msgs mrpt1 rviz visualization-msgs dynamic-reconfigure std-msgs roslaunch tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
