
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-plugins, roscpp }:
buildRosPackage {
  pname = "ros-melodic-hector-gazebo-thermal-camera";
  version = "0.5.1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/hector_gazebo_thermal_camera/0.5.1-0.tar.gz";
    name = "0.5.1-0.tar.gz";
    sha256 = "6a3221be450c74fed270dcff5e3399e8e5650169b2bdf36ecf588a9602d95a2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-plugins roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated thermal camera images. The plugin uses modified code from the gazebo_ros_camera plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
