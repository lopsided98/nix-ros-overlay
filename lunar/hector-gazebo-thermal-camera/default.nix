
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, gazeboSimulator, gazebo-plugins }:
buildRosPackage {
  pname = "ros-lunar-hector-gazebo-thermal-camera";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/hector_gazebo_thermal_camera/0.5.1-0.tar.gz;
    sha256 = "82f2801114c25b43e2e24d33a64b15907389e1b5838f7eba02767445d69ae0a1";
  };

  buildInputs = [ roscpp gazebo-plugins ];
  propagatedBuildInputs = [ gazeboSimulator.gazebo roscpp gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated thermal camera images. The plugin uses modified code from the gazebo_ros_camera plugin.'';
    #license = lib.licenses.BSD;
  };
}
