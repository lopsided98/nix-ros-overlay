
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control-select-joints, hector-gazebo-thermal-camera, hector-sensors-description, hector-xacro-tools, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-components-description";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_components_description/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "c836e041158b1bac298c05bc1d4de83dfe722c2c7fa20daf6dec282e2a336db8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-control-select-joints hector-gazebo-thermal-camera hector-sensors-description hector-xacro-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_components_description contains URDF xacro macros for robot components, so they are easily attachable to robot models.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
