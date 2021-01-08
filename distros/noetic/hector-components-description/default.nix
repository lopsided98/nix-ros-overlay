
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control-select-joints, hector-gazebo-thermal-camera, hector-sensors-description, hector-xacro-tools, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-components-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_components_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "6c4de70cbdecafa782c3bc74424701aef4fd9b49a13fe734ec31df0f0a124835";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros-control-select-joints hector-gazebo-thermal-camera hector-sensors-description hector-xacro-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_components_description contains URDF xacro macros for robot components, so they are easily attachable to robot models.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
