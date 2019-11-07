
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, ruby, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-wave-gazebo";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wave_gazebo/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "f2256e74f299a5286425a418341c8d8395a34e60adcee4d0c3cfe917ee2e80e1";
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
