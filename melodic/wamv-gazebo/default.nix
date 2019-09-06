
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, catkin, wamv-description, gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_gazebo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "dc05d0a3a9bbaaa77c0daf4813ef7c7ab9b58364219eb5d9a6b0d45b1ac0eab4";
  };

  buildType = "catkin";
  buildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  propagatedBuildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
