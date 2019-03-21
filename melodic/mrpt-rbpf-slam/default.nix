
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-bridge, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, roslaunch, roscpp, mvsim }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rbpf-slam";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_rbpf_slam/0.1.8-0.tar.gz;
    sha256 = "2fd5cdd073352fb979256ca6083d9f490d90681592a4c7c9ff16d8f2c2d4ad21";
  };

  propagatedBuildInputs = [ roslaunch tf sensor-msgs mrpt-rawlog roscpp nav-msgs rviz mrpt1 visualization-msgs dynamic-reconfigure std-msgs mrpt-bridge roslib mvsim ];
  nativeBuildInputs = [ mrpt-bridge tf sensor-msgs catkin roscpp nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roslib ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (http://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    #license = lib.licenses.BSD;
  };
}
