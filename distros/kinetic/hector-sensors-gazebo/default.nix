
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, hector-sensors-description }:
buildRosPackage {
  pname = "ros-kinetic-hector-sensors-gazebo";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_sensors_gazebo/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "95fdab22204b9dadcd183fee8da7c6a6f920024bef030b9927a3072fcb4524bb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins hector-sensors-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_gazebo depends on the necessary plugins for using the sensors from the hector_models repository.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
