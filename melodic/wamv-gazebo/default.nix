
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, catkin, wamv-description, gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_gazebo/1.2.0-1.tar.gz;
    sha256 = "1dea1c29c9680ba154f8c76dddb84fa18d549e7642b317331a271c9bcdac6890";
  };

  buildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  propagatedBuildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
