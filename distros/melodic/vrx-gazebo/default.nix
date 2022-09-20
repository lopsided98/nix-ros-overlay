
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-ros, geographic-msgs, joy, joy-teleop, message-runtime, protobuf, std-msgs, wamv-gazebo, wave-gazebo, xacro }:
buildRosPackage {
  pname = "ros-melodic-vrx-gazebo";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/vrx_gazebo/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "5bcd4e7ec999a9f617586ef2098d3a1fb42b36384d53b661637e5baceb4bb22b";
  };

  buildType = "catkin";
  buildInputs = [ catkin protobuf ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros geographic-msgs joy joy-teleop message-runtime std-msgs wamv-gazebo wave-gazebo xacro ];
  nativeBuildInputs = [ catkin protobuf ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
