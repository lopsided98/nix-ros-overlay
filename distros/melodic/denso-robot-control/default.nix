
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, catkin, controller-manager, denso-robot-core, hardware-interface, joint-limits-interface, roscpp, std-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-control";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/denso_robot_control/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "1e589e72e45771a3426399b93f1d84379dba240117ce71f4f62230cd968d1298";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bcap-core bcap-service controller-manager denso-robot-core hardware-interface joint-limits-interface roscpp std-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot control package includes a node for controlling DENSO robot controllers with MoveIt!.'';
    license = with lib.licenses; [ mit ];
  };
}
