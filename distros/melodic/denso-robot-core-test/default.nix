
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, bcap-core, catkin, denso-robot-core, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-core-test";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_core_test/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "b500a34855e62c572cb8b2590855e8398d10be29a7a729a168b86a3088cb36ad";
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
