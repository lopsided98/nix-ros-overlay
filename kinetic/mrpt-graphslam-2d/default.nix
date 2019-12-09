
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, sensor-msgs, geometry-msgs, mrpt-msgs, std-msgs, tf, catkin, roscpp, mrpt-bridge, tf2, multimaster-msgs-fkie, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-graphslam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_graphslam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "881be5cf2439363447ea31788423cefa3b298e983beed2717b73cd01093f24b2";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs geometry-msgs mrpt-msgs std-msgs tf roscpp mrpt-bridge tf2 multimaster-msgs-fkie rospy nav-msgs ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs geometry-msgs mrpt-msgs std-msgs tf tf2 mrpt-bridge roscpp multimaster-msgs-fkie rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implement graphSLAM using the mrpt-graphslam library, in an online fashion
  	by directly reading measurements off ROS Topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
