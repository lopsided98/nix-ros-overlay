
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-legacy, rtabmap-msgs, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-ros";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_ros/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "455ebbdd7b349b293e9039003ab73bced6249e6cd089adef18abf4b99dba605c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-legacy rtabmap-msgs rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map Stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
