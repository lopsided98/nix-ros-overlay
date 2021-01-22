
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, ruby, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wave-gazebo";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wave_gazebo/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "dd447b92a4ed306e722dbc8240675d53eeb52cbae4d17500d3e641f7cb0297e8";
  };

  buildType = "catkin";
  buildInputs = [ ruby ];
  propagatedBuildInputs = [ gazebo-ros wave-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains Gazebo media, models and worlds for simulating
    water waves and dynamics for surface vessels. There are ROS 
    launch scripts that may be used to launch a Gazebo session and
    load a world and models using `roslaunch`.'';
    license = with lib.licenses; [ "TBD" ];
  };
}
