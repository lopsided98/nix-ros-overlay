
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, ruby, xacro, wave-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-wave-gazebo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wave_gazebo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "09060b76941958b0f2693b35f90b6cb6e27df11cc3acf825c90e82ed65f659f3";
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
