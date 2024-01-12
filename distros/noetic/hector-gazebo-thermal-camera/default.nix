
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-plugins, roscpp }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo-thermal-camera";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo_thermal_camera/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "64ac64b5360fd91f91890f06fe200f1c05e509a49bb8614dcb43f8cf4375f01b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-plugins roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated thermal camera images. The plugin uses modified code from the gazebo_ros_camera plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
