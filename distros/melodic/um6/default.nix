
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslint, sensor-msgs, serial }:
buildRosPackage {
  pname = "ros-melodic-um6";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um6-release/archive/release/melodic/um6/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "2dab6e1c445eb2ac9fb634a8df474aec4e9f269f5a19832109ba8ba324ffcadd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  propagatedBuildInputs = [ message-runtime roscpp sensor-msgs serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um6 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM6.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
