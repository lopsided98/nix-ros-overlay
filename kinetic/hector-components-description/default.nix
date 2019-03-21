
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-sensors-description, catkin, xacro, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-kinetic-hector-components-description";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/kinetic/hector_components_description/0.4.2-0.tar.gz;
    sha256 = "c845c768841af7e57034bd4fae5f6a569bed46b0e3a0d540eefebdd62dec3624";
  };

  propagatedBuildInputs = [ hector-sensors-description xacro hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_components_description contains URDF xacro macros for robot components, so they are easily attachable to robot models.'';
    #license = lib.licenses.BSD;
  };
}
