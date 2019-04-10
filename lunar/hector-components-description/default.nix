
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-sensors-description, catkin, xacro, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-lunar-hector-components-description";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/lunar/hector_components_description/0.5.0-0.tar.gz;
    sha256 = "fdacebd18d4d1d78eb6f8341a49481c699b5fff12ecac4474d990703f7ecfe7c";
  };

  propagatedBuildInputs = [ hector-sensors-description xacro hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_components_description contains URDF xacro macros for robot components, so they are easily attachable to robot models.'';
    #license = lib.licenses.BSD;
  };
}
