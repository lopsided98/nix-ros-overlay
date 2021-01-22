
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-ros, geographic-msgs, joy, joy-teleop, message-runtime, protobuf, std-msgs, wamv-gazebo, wave-gazebo, xacro }:
buildRosPackage {
  pname = "ros-kinetic-vrx-gazebo";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/vrx_gazebo/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "8ce7bb94e167e6d0601af10282e3770653a3c92381a850ffc1160923d7c87f3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-dev gazebo-ros geographic-msgs joy joy-teleop message-runtime std-msgs wamv-gazebo wave-gazebo xacro ];
  nativeBuildInputs = [ catkin protobuf ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
