
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-libgui, mrpt-libros-bridge, mrpt-libslam, mrpt-msgs-bridge, mrpt-rawlog, mvsim, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-rbpf-slam";
  version = "0.1.19-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_rbpf_slam/0.1.19-1.tar.gz";
    name = "0.1.19-1.tar.gz";
    sha256 = "ec1b871d146219b547a8b92d360ad82367af8351dcde1a0934e4108c4eb22d9f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-libgui mrpt-libros-bridge mrpt-libslam mrpt-msgs-bridge mrpt-rawlog mvsim nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package is used for gridmap SLAM. The interface is similar to gmapping (https://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
