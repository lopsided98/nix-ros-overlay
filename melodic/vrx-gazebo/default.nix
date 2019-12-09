
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, xacro, protobuf, std-msgs, catkin, wamv-gazebo, joy-teleop, geographic-msgs, wave-gazebo, gazebo-ros, message-runtime, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-vrx-gazebo";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/vrx_gazebo/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "40c1c6e847bf627372b0c9320417f8fda63a7a676a637961a02d242e294b7fa8";
  };

  buildType = "catkin";
  buildInputs = [ joy xacro std-msgs wamv-gazebo joy-teleop geographic-msgs wave-gazebo gazebo-ros message-runtime gazebo-dev ];
  propagatedBuildInputs = [ joy xacro std-msgs wamv-gazebo geographic-msgs joy-teleop wave-gazebo gazebo-ros message-runtime gazebo-dev ];
  nativeBuildInputs = [ protobuf catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
