
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, urdf, robot-state-publisher, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-description";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3_description/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "75b91b560d2d284556401d76dd7160eb216813715fd5da607f139b3fc5f6e68d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator 3D model description for visualization and simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
