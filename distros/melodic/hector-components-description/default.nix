
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-sensors-description, hector-xacro-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-hector-components-description";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/melodic/hector_components_description/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "b3626eafa575c9d792d9a92beefb7b588076ebdafaec15c168268b60a1890053";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-sensors-description hector-xacro-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_components_description contains URDF xacro macros for robot components, so they are easily attachable to robot models.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
