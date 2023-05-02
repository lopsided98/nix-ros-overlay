
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-msgs-bridge, mrpt-rawlog, mrpt2, mvsim, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rbpf-slam";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_rbpf_slam/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "a466ab967fe842d644ebf3d15a29c8f9ee37ff40f4bc01a3afa55957db5a129b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-msgs-bridge mrpt-rawlog mrpt2 mvsim nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is used for gridmap SLAM. The interface is similar to gmapping (https://wiki.ros.org/gmapping) but the package supports different particle-filter algorithms, range-only SLAM, can work with several grid maps simultaneously and more.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
