
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-abb-rapid-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/noetic/abb_rapid_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "ec6ec37becde2640a617ce58971b11e976fa4fad1fad20d3a59eed92e496eaaa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides ROS message definitions, representing RAPID data from ABB robot controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
