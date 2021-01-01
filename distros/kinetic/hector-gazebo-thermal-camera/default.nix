
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-plugins, gazebo_7, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-hector-gazebo-thermal-camera";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo_thermal_camera/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "59d39335d4e27350c5f0ab79336cb69bddc42b527af4d0803bdc6c6aef2eed7d";
  };

  buildType = "catkin";
  buildInputs = [ gazebo_7 ];
  propagatedBuildInputs = [ gazebo gazebo-plugins roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated thermal camera images. The plugin uses modified code from the gazebo_ros_camera plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
