
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, ruby, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-wave-gazebo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wave_gazebo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "dfe035aa8100f76d6b7080f2f7ce5aeeea0643bce6b5a21990f91b1bb3ad3157";
  };

  buildType = "catkin";
  buildInputs = [ ruby xacro ];
  propagatedBuildInputs = [ gazebo-ros xacro wave-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains Gazebo media, models and worlds for simulating
    water waves and dynamics for surface vessels. There are ROS 
    launch scripts that may be used to launch a Gazebo session and
    load a world and models using `roslaunch`.'';
    license = with lib.licenses; [ "TBD" ];
  };
}
