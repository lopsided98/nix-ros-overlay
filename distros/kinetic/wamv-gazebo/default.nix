
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, wamv-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-wamv-gazebo";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wamv_gazebo/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "fd0baeb8840ec1eba9fa3e6affaff62e780fd286e75400676d3b47f5cf9450ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins wamv-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
