
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, hector-sensors-description }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-gazebo";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/hector_sensors_gazebo/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "d3f9828077271e47f60b41a71af04338da993a188aa40c339365a6fb900920d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins hector-sensors-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
