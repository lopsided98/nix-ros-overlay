
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, catkin, wamv-description, gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_gazebo/1.0.1-0.tar.gz;
    sha256 = "108c898691498d09b8946e2d081c9e3f8f3c247db5bfd785df968d4ae28dd189";
  };

  buildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  propagatedBuildInputs = [ hector-gazebo-plugins wamv-description gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
