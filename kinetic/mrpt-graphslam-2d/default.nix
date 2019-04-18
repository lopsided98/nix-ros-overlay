
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, multimaster-msgs-fkie, catkin, roscpp, tf2, nav-msgs, mrpt-msgs, mrpt1, rospy, std-msgs, mrpt-bridge, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-graphslam-2d";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_graphslam_2d/0.1.9-0.tar.gz;
    sha256 = "d6a5274f15d6c640c99e98feccae816cc817ab1efd0c913643899a5a67bc3365";
  };

  buildInputs = [ sensor-msgs multimaster-msgs-fkie roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs multimaster-msgs-fkie roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implement graphSLAM using the mrpt-graphslam library, in an online fashion
  	by directly reading measurements off ROS Topics.'';
    #license = lib.licenses.BSD;
  };
}
