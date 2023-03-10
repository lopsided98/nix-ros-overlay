
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, bcap-core, catkin, denso-robot-core, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core-test";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_core_test/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "3631a6fe0be8f5f4d6f0852927c7af3866893256e696f82719e3d43d88260095";
  };

  buildType = "catkin";
  buildInputs = [ bcap-core catkin denso-robot-core ];
  propagatedBuildInputs = [ actionlib roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot core test package includes a node for testing denso robot core node.'';
    license = with lib.licenses; [ mit ];
  };
}
