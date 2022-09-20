
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-msgs-bridge, mrpt-rawlog, mrpt2, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-2d";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_2d/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "6d79212d84c0e2cdb8cdfcfd2f16b0a1686692598e8008f34dea7fb120cb7a61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-msgs-bridge mrpt-rawlog mrpt2 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
