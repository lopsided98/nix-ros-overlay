
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-manager-msgs, log4cxx, message-generation, message-runtime, pluginlib, ros-control, roscpp, smacc-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-smacc";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/smacc-release/archive/release/melodic/smacc/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "082945c5f579e5fca9e49aabe32b966fa5d8e9b53a0e94b384a8f302d217dcee";
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
