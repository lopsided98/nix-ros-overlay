
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-khi-duaro-gazebo";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_duaro_gazebo/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "3cda275a6cfaf6aac829106bac441f5958cc7a1d717116abbd561132b76ff005";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
