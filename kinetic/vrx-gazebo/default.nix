
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, wave-gazebo, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, protobuf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-vrx-gazebo";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/vrx_gazebo/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "6a0d5e16a7a548b977ebc0ad9f9829f5884e170ace02a107eb4426c8d5261e06";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ protobuf catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
