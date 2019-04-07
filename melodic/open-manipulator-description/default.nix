
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-description";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_description/2.0.1-0.tar.gz;
    sha256 = "f44f4bb8965b79fffdf4906f742e4fccd178a55c8ee11e3abacc24828e5ae9c5";
  };

  buildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  propagatedBuildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator 3D model description for visualization and simulation'';
    #license = lib.licenses.Apache 2.0;
  };
}
