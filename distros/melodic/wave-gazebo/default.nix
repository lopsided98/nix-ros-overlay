
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, ruby, wave-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-wave-gazebo";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wave_gazebo/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c9307ade2ceee4823cec9ad2501a074b8ffaa00ca535fa951e098203d9347099";
  };

  buildType = "catkin";
  buildInputs = [ catkin ruby ];
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
