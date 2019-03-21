
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, multimaster-msgs-fkie, catkin, roscpp, tf2, nav-msgs, mrpt-msgs, mrpt1, rospy, std-msgs, mrpt-bridge, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-graphslam-2d";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_graphslam_2d/0.1.8-0.tar.gz;
    sha256 = "1d13420731691fcb21456de1885e8e2faedfcd67596c3eb0603b7c7f24fc9946";
  };

  propagatedBuildInputs = [ sensor-msgs multimaster-msgs-fkie roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];
  nativeBuildInputs = [ sensor-msgs multimaster-msgs-fkie catkin roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];

  meta = {
    description = ''Implement graphSLAM using the mrpt-graphslam library, in an online fashion
  	by directly reading measurements off ROS Topics.'';
    #license = lib.licenses.BSD;
  };
}
