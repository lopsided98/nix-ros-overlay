
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-multimaster-msgs, geometry-msgs, mrpt-msgs, mrpt-msgs-bridge, mrpt2, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-mrpt-graphslam-2d";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_graphslam_2d/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "06961b4f93c3809ed67f77cc46e2446d77f06d4c9f5c20b2a73f196842b9eaff";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fkie-multimaster-msgs geometry-msgs mrpt-msgs mrpt-msgs-bridge mrpt2 nav-msgs roscpp rospy sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implement graphSLAM using the mrpt-graphslam library, in an online fashion
  	by directly reading measurements off ROS Topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
