
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-vrx-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/vrx_gazebo/1.1.1-1.tar.gz;
    sha256 = "0c34fdbb792526c2eca3da6c09044f4c2c83932092cd19310b40b1ff7e626c83";
  };

  buildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
