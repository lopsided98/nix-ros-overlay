
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, hector-gazebo-plugins, usv-gazebo-plugins, catkin, wamv-description, robot-localization, gazebo-plugins, velodyne-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wamv_gazebo/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "ca88141eb4cf4c4266d296a5f24d07c3a79b56e47787493c6596bbfbdc711f9f";
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
