
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, sensor-msgs, catkin, message-filters, roscpp, nav-msgs, visualization-msgs, eigen, sparse-bundle-adjustment, tf, open-karto }:
buildRosPackage {
  pname = "ros-melodic-slam-karto";
  version = "0.8.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/slam_karto-release/archive/release/melodic/slam_karto/0.8.1-0.tar.gz";
    name = "0.8.1-0.tar.gz";
    sha256 = "5a602df47e9778bf47a4e51c2e263c27188f949686e525bb8a446c2eb6637eea";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules rosconsole sensor-msgs message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];
  propagatedBuildInputs = [ rosconsole sensor-msgs message-filters roscpp nav-msgs visualization-msgs eigen sparse-bundle-adjustment tf open-karto ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
