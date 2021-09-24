
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pcl-conversions";
  version = "1.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/pcl_conversions/1.7.3-1.tar.gz";
    name = "1.7.3-1.tar.gz";
    sha256 = "d28ce7647f4e4360aa87d539c1dfeb5a6d17fda83b4093408c1666ba66a922bb";
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
