
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, wave-gazebo, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-vrx-gazebo";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/vrx_gazebo/1.2.0-1.tar.gz;
    sha256 = "d940d0bdcfea30f81803381d7e3b923f0dd7fe6ad1f8c169755e82e7aabe301c";
  };

  buildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
