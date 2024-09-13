
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-msgs-bridge, mrpt-rawlog, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-ekf-slam-2d";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_ekf_slam_2d/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "0fae5bd95d08f8676157fb0b844205fdc3cfe028ebdf34b15d9dc1cab7dbe494";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-msgs-bridge mrpt-rawlog nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
