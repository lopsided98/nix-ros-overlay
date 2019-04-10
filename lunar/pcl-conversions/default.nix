
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, pcl, sensor-msgs, catkin, pcl-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pcl-conversions";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/pcl_conversions-release/archive/release/lunar/pcl_conversions/0.2.1-0.tar.gz;
    sha256 = "6497bedee6e6aa9da2c48458e17a7e47755f75802493598b02fcb42da2006b8d";
  };

  buildInputs = [ cmake-modules pcl-msgs std-msgs pcl sensor-msgs roscpp ];
  propagatedBuildInputs = [ pcl-msgs std-msgs pcl sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    #license = lib.licenses.BSD;
  };
}
