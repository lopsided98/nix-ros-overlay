
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, nav-msgs, open-karto, cmake-modules, tf, catkin, eigen, visualization-msgs, roscpp, sparse-bundle-adjustment, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-slam-karto";
  version = "0.7.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_karto-release/archive/release/kinetic/slam_karto/0.7.3-0.tar.gz";
    name = "0.7.3-0.tar.gz";
    sha256 = "d08092e30515f9e20a14e1fdc9827ea479fa8b29c7dd1b25750db95cd0889348";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters nav-msgs open-karto tf cmake-modules eigen visualization-msgs roscpp sparse-bundle-adjustment rosconsole ];
  propagatedBuildInputs = [ sensor-msgs message-filters nav-msgs open-karto tf eigen visualization-msgs roscpp sparse-bundle-adjustment rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
