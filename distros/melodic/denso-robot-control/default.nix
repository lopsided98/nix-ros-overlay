
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, catkin, controller-manager, denso-robot-core, hardware-interface, joint-limits-interface, roscpp, std-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-control";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_control/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "7bb30e678f52af168577bba681ee0c1ec3b30fec29fc25be7040ce7451bb223d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bcap-core bcap-service controller-manager denso-robot-core hardware-interface joint-limits-interface roscpp std-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot control package includes a node for controlling DENSO robot controllers with MoveIt!.'';
    license = with lib.licenses; [ mit ];
  };
}
