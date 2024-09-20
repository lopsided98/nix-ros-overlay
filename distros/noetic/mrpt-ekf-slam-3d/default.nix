
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-msgs-bridge, mrpt-rawlog, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-ekf-slam-3d";
  version = "0.1.19-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_ekf_slam_3d/0.1.19-1.tar.gz";
    name = "0.1.19-1.tar.gz";
    sha256 = "c563a99101a7f6e49720b1a3610723f4286cea1b2e40ee0935d04b80f4b5df90";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-msgs-bridge mrpt-rawlog nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
