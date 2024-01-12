
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-thermal-camera, tf, tf2-ros, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-description";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_sensors_description/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "df26c218168a217bee936dc0f3b18bede77d28963cce86a8aadfdaeb0681424d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-gazebo-thermal-camera tf tf2-ros velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
