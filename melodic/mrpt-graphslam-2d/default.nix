
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, multimaster-msgs-fkie, catkin, roscpp, tf2, nav-msgs, mrpt-msgs, mrpt1, rospy, std-msgs, mrpt-bridge, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-graphslam-2d";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_graphslam_2d/0.1.9-0.tar.gz;
    sha256 = "2581a0b10692921efe75fa9456cba7e3f39755e8ec223ad296f44944e1d721c4";
  };

  buildInputs = [ sensor-msgs multimaster-msgs-fkie roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs multimaster-msgs-fkie roscpp tf2 nav-msgs mrpt-msgs mrpt1 rospy std-msgs mrpt-bridge tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implement graphSLAM using the mrpt-graphslam library, in an online fashion
  	by directly reading measurements off ROS Topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
