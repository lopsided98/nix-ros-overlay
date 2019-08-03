
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-vrx-gazebo";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/vrx_gazebo/1.1.2-1.tar.gz;
    sha256 = "bfab5848dfb0d85a55c422fb7d5ceed0ad8b13ef8afc26b1ffc441bcc23d0366";
  };

  buildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
