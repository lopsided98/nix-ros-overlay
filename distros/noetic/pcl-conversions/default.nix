
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pcl-conversions";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/pcl_conversions/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "b89554a80a80a99411c490726b57a33bfd43c9c892e255a0c8c57e16fa671787";
  };

  buildType = "catkin";
  checkInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  propagatedBuildInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
