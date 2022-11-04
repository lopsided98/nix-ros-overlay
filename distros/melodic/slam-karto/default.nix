
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-filters, nav-msgs, open-karto, rosconsole, roscpp, sensor-msgs, sparse-bundle-adjustment, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-slam-karto";
  version = "0.8.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_karto-release/archive/release/melodic/slam_karto/0.8.1-0.tar.gz";
    name = "0.8.1-0.tar.gz";
    sha256 = "5a602df47e9778bf47a4e51c2e263c27188f949686e525bb8a446c2eb6637eea";
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
