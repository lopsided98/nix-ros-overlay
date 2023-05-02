
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mrpt-rawlog, mrpt2, nav-msgs, roscpp, roslaunch, roslib, rviz, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-icp-slam-2d";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_icp_slam_2d/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "cf27e4e568c563d3f04ef69189ecef86246aa93d18c89ac7c5cac7c966a01ba7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mrpt-rawlog mrpt2 nav-msgs roscpp roslaunch roslib rviz sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
