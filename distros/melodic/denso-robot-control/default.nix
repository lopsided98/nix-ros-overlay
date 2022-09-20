
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, catkin, controller-manager, denso-robot-core, hardware-interface, joint-limits-interface, roscpp, std-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-control";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_control/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "44632e28b7c8dc71fca2aacb9a2022f65fbfbc1cf41b86fa5db23572002c912f";
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
