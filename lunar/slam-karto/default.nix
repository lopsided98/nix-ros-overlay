
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, sensor-msgs, catkin, message-filters, roscpp, nav-msgs, visualization-msgs, eigen, sparse-bundle-adjustment, tf, open-karto }:
buildRosPackage {
  pname = "ros-lunar-slam-karto";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/slam_karto-release/archive/release/lunar/slam_karto/0.8.1-0.tar.gz;
    sha256 = "9ca5ad80277dd055608b52ab5cecbc7d44d03cc8656a9d8ac53dfcc39d206bbf";
  };

  buildInputs = [ rosconsole cmake-modules sensor-msgs message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];
  propagatedBuildInputs = [ rosconsole sensor-msgs message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    #license = lib.licenses.LGPL;
  };
}
