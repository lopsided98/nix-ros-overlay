
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-custom-sensor-preloader, gazebo-dev }:
buildRosPackage {
  pname = "ros-noetic-gazebo-noisy-depth-camera";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.fel.cvut.cz/cras/ros-release/gazebo_noisy_depth_camera-release/-/archive/release/noetic/gazebo_noisy_depth_camera/1.0.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "47cfc77251c668c19f570660de50af27f1702cb1fbfeefe19ab2f01d0d5b7dee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-custom-sensor-preloader gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Gazebo depth camera which supports noise";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
