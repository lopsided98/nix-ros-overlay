
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, sensor-msgs, catkin, mrpt-rawlog, roscpp, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, tf, mvsim }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rbpf-slam";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_rbpf_slam/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "57e4adcdc5e97142891a7eaa98ed25e2971647d794943a060d9610f3df14fc8b";
  };

  buildType = "catkin";
  buildInputs = [ mrpt-bridge sensor-msgs roscpp roslib nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch tf ];
  propagatedBuildInputs = [ mrpt-bridge sensor-msgs mrpt-rawlog roscpp roslib nav-msgs mrpt1 rviz visualization-msgs dynamic-reconfigure std-msgs roslaunch tf mvsim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (http://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
