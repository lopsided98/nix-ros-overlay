
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp, mvsim }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rbpf-slam";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_rbpf_slam/0.1.9-0.tar.gz;
    sha256 = "7919b38bcdd571629aa5846008e22f8d4c4ec51cc9fb4e15e9198872254e2133";
  };

  buildInputs = [ mrpt-bridge tf sensor-msgs roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];
  propagatedBuildInputs = [ roslaunch tf sensor-msgs mrpt-rawlog roscpp nav-msgs mrpt1 rviz visualization-msgs dynamic-reconfigure std-msgs mrpt-bridge roslib mvsim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (http://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    #license = lib.licenses.BSD;
  };
}
