
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, catkin }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-description";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/kinetic/open_manipulator_with_tb3_description/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "ce434fcff1e79522907cb768d7b10391d69829c2428d67977e212f86caa375c4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator 3D model description for visualization and simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
