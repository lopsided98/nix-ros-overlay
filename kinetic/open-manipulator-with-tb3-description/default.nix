
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, robot-state-publisher, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-description";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_description/1.1.0-0.tar.gz;
    sha256 = "ce434fcff1e79522907cb768d7b10391d69829c2428d67977e212f86caa375c4";
  };

  propagatedBuildInputs = [ urdf joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator 3D model description for visualization and simulation'';
    #license = lib.licenses.Apache 2.0;
  };
}
