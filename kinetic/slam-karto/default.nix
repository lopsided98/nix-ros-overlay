
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, sensor-msgs, catkin, message-filters, roscpp, nav-msgs, visualization-msgs, eigen, sparse-bundle-adjustment, tf, open-karto }:
buildRosPackage {
  pname = "ros-kinetic-slam-karto";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/slam_karto-release/archive/release/kinetic/slam_karto/0.7.3-0.tar.gz;
    sha256 = "d08092e30515f9e20a14e1fdc9827ea479fa8b29c7dd1b25750db95cd0889348";
  };

  propagatedBuildInputs = [ rosconsole sensor-msgs message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];
  nativeBuildInputs = [ rosconsole cmake-modules sensor-msgs catkin message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    #license = lib.licenses.LGPL;
  };
}
