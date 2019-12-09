
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, hector-gazebo-plugins, usv-gazebo-plugins, catkin, wamv-description, robot-localization, gazebo-plugins, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-wamv-gazebo";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wamv_gazebo/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "c41fc7222e3fedc5f56f82c8b952962c1fc8a7eb6653445b620577a6169e8f44";
  };

  buildType = "catkin";
  buildInputs = [ xacro hector-gazebo-plugins usv-gazebo-plugins wamv-description robot-localization gazebo-plugins velodyne-gazebo-plugins ];
  propagatedBuildInputs = [ xacro hector-gazebo-plugins usv-gazebo-plugins wamv-description robot-localization gazebo-plugins velodyne-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
