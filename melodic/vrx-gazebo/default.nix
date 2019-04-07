
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-vrx-gazebo";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/vrx_gazebo/1.0.1-0.tar.gz;
    sha256 = "d6a4a9bdd86e6645bd539ec12ebcde5a87f46368643f4485561e3fae9478e951";
  };

  buildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    #license = lib.licenses.Apache 2.0;
  };
}
