
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, sensor-msgs, catkin, mrpt-rawlog, roscpp, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, tf, mvsim }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rbpf-slam";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_rbpf_slam/0.1.9-0.tar.gz;
    sha256 = "ea3e077a2a2f682268bfe6ca88b95f03c26823ef8aa2f9cc50cc7a1c534228c2";
  };

  buildInputs = [ mrpt-bridge sensor-msgs roscpp roslib nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch tf ];
  propagatedBuildInputs = [ roslaunch sensor-msgs mrpt-rawlog roscpp roslib nav-msgs mrpt1 rviz visualization-msgs dynamic-reconfigure std-msgs mrpt-bridge tf mvsim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (http://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
