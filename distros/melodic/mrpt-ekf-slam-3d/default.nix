
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, mrpt-bridge, mrpt-rawlog, mrpt1, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-3d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_3d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "a2e86b343a30fa5f18bacf864fbdbc0623114a646802dd39fabab40f08ab3535";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure mrpt-bridge mrpt-rawlog mrpt1 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
