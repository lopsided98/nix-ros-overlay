
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-thermal-camera, tf, tf2-ros, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_sensors_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "096d291f9bbe90e8ed74cd685b4c7e940ecb9a01d73a5ed0e6ffe577fcc74a44";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-thermal-camera tf tf2-ros velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
