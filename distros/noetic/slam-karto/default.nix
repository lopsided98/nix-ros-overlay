
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-filters, nav-msgs, open-karto, rosconsole, roscpp, sensor-msgs, sparse-bundle-adjustment, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-slam-karto";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_karto-release/archive/release/noetic/slam_karto/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "2b4eeea947a52bb8535d381a64e896efe9f954f22c3c69ae99f3f9abf2d94a31";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen message-filters nav-msgs open-karto rosconsole roscpp sensor-msgs sparse-bundle-adjustment tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
