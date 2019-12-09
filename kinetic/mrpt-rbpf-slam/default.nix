
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, mvsim, sensor-msgs, dynamic-reconfigure, std-msgs, roslaunch, tf, roslib, catkin, rviz, mrpt-rawlog, mrpt-bridge, roscpp, visualization-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rbpf-slam";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_rbpf_slam/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "57e4adcdc5e97142891a7eaa98ed25e2971647d794943a060d9610f3df14fc8b";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs dynamic-reconfigure std-msgs roslaunch tf roslib roscpp visualization-msgs mrpt-bridge nav-msgs ];
  propagatedBuildInputs = [ mrpt1 mvsim sensor-msgs nav-msgs dynamic-reconfigure std-msgs tf roslib rviz mrpt-rawlog mrpt-bridge roscpp visualization-msgs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (http://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
