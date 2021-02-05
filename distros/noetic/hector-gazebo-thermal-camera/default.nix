
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-plugins, roscpp }:
buildRosPackage {
  pname = "ros-noetic-hector-gazebo-thermal-camera";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_gazebo_thermal_camera/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "ee40ddebaf2ffffd2194dc3d529742a87cced11f9b1e1191ab0f193a2c3c78e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-plugins roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated thermal camera images. The plugin uses modified code from the gazebo_ros_camera plugin.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
