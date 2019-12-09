
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, sensor-msgs, geometry-msgs, mrpt-msgs, std-msgs, tf, catkin, roscpp, mrpt-bridge, tf2, multimaster-msgs-fkie, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-graphslam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_graphslam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "9b184f6fad8c70bfb3bf62ebf2b7481663020b32a90998859c923b8a634a0a5c";
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
