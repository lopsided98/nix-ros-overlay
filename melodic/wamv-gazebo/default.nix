
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, catkin, wamv-description, gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_gazebo/1.1.1-1.tar.gz;
    sha256 = "fc0d4a6e47850abae35112cdd862e8145a8faa1f8c08fbda3ab7178c640d4aab";
  };

  buildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  propagatedBuildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
