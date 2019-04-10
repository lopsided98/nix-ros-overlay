
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openslam-gmapping, tf, catkin, roscpp, rostest, nav-msgs, nodelet }:
buildRosPackage {
  pname = "ros-lunar-gmapping";
  version = "1.3.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/slam_gmapping-release/archive/release/lunar/gmapping/1.3.10-0.tar.gz;
    sha256 = "6ffffba079bb8d8a1b7612a8c83d4f2d7adc044eacc2449989934aa4ec360d72";
  };

  buildInputs = [ rostest nav-msgs nodelet openslam-gmapping tf roscpp ];
  propagatedBuildInputs = [ nav-msgs openslam-gmapping tf nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a ROS wrapper for OpenSlam's Gmapping. 
  The gmapping package provides laser-based SLAM (Simultaneous Localization and Mapping), 
  as a ROS node called slam_gmapping. Using slam_gmapping, you can create a 2-D occupancy
  grid map (like a building floorplan) from laser and pose data collected by a mobile robot.'';
    #license = lib.licenses.CreativeCommons-by-nc-sa-2.0;
  };
}
