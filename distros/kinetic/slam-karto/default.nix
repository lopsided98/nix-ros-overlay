
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-filters, nav-msgs, open-karto, rosconsole, roscpp, sensor-msgs, sparse-bundle-adjustment, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-slam-karto";
  version = "0.7.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_karto-release/archive/release/kinetic/slam_karto/0.7.3-0.tar.gz";
    name = "0.7.3-0.tar.gz";
    sha256 = "d08092e30515f9e20a14e1fdc9827ea479fa8b29c7dd1b25750db95cd0889348";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen message-filters nav-msgs open-karto rosconsole roscpp sensor-msgs sparse-bundle-adjustment tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
