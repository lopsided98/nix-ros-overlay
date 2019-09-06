
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openslam-gmapping, tf, catkin, roscpp, rostest, nav-msgs, nodelet }:
buildRosPackage {
  pname = "ros-melodic-gmapping";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_gmapping-release/archive/release/melodic/gmapping/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0cb572f0b00c39ecc0989a195f137172cf6a3481a176bb829484d6d731a00ea1";
  };

  buildType = "catkin";
  buildInputs = [ openslam-gmapping tf roscpp rostest nav-msgs nodelet ];
  propagatedBuildInputs = [ openslam-gmapping tf roscpp nav-msgs nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
