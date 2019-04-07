
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-interface, catkin, ibeo-core, ibeo-msgs, visualization-msgs, pcl-ros, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ibeo-lux";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/astuff/ibeo_lux-release/archive/release/kinetic/ibeo_lux/2.0.1-0.tar.gz;
    sha256 = "47bd62ae74a6c76aede8be4ea7b5fe9ea4bfd9cdfd452d6701dc9426ad3139bd";
  };

  buildInputs = [ ibeo-core ibeo-msgs pcl-ros std-msgs network-interface visualization-msgs geometry-msgs roscpp ];
  propagatedBuildInputs = [ ibeo-core ibeo-msgs pcl-ros std-msgs network-interface visualization-msgs geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    #license = lib.licenses.MIT;
  };
}
