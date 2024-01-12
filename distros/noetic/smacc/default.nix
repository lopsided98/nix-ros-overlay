
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-manager-msgs, log4cxx, message-generation, message-runtime, pluginlib, ros-control, roscpp, smacc-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smacc";
  version = "1.4.6-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/smacc-release/archive/release/noetic/smacc/1.4.6-1.tar.gz";
    name = "1.4.6-1.tar.gz";
    sha256 = "8b6622feb03be4fa76bff87bc8f43c27b1ae6d28e9278739bc69491266f9990b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs controller-manager-msgs log4cxx message-runtime pluginlib ros-control roscpp smacc-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SMACC is a ROS/C++ library to implement in easy and systematic way UML StateCharts (AKA state machines). SMACC is inspired by the SMACH ROS package and it is built on top of Boost StateChart library. Developed by Reel Robotics.'';
    license = with lib.licenses; [ mit ];
  };
}
