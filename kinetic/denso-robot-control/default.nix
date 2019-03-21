
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, denso-robot-core, joint-limits-interface, catkin, bcap-core, std-msgs, bcap-service, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-control";
  version = "3.0.2-r1";

  src = fetchurl {
    url = https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_control/3.0.2-1.tar.gz;
    sha256 = "33b3ba06eb17f5100b0367d092c998bf2aae98054345a8480a9fc81f34b71dbe";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface denso-robot-core joint-limits-interface bcap-core std-msgs bcap-service roscpp transmission-interface ];
  nativeBuildInputs = [ controller-manager hardware-interface denso-robot-core joint-limits-interface catkin bcap-core std-msgs bcap-service roscpp transmission-interface ];

  meta = {
    description = ''The denso robot control package includes a node for controlling DENSO robot controllers with MoveIt!.'';
    #license = lib.licenses.MIT;
  };
}
