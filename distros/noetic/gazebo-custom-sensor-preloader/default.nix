
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gazebo-dev, gazebo-ros, pluginlib, rosbash }:
buildRosPackage {
  pname = "ros-noetic-gazebo-custom-sensor-preloader";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/gazebo_custom_sensor_preloader/-/archive/release/noetic/gazebo_custom_sensor_preloader/1.1.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "114669818049c6e24a52fa887ebea28d26f7f3298e427e18891db7b5d693bb50";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros pluginlib rosbash ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin that allows writing custom Gazebo sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
