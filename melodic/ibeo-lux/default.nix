
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, network-interface, catkin, ibeo-core, ibeo-msgs, visualization-msgs, pcl-ros, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-ibeo-lux";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/astuff/ibeo_lux-release/archive/release/melodic/ibeo_lux/2.0.1-0.tar.gz;
    sha256 = "0aa9797cbee3936a930074405e44de2f604c0eaf99b7b4e6b60d3773243a0fb3";
  };

  propagatedBuildInputs = [ ibeo-core ibeo-msgs pcl-ros std-msgs network-interface visualization-msgs geometry-msgs roscpp ];
  nativeBuildInputs = [ network-interface catkin roscpp ibeo-core std-msgs pcl-ros ibeo-msgs visualization-msgs geometry-msgs ];

  meta = {
    description = ''ROS driver for IBEO LUX'';
    #license = lib.licenses.MIT;
  };
}
