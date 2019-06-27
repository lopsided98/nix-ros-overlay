
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, khi-robot-control, catkin, khi-duaro-moveit-config, joint-trajectory-controller, rostest, position-controllers, robot-state-publisher, roslaunch, tf, khi-duaro-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-bringup";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_bringup/1.1.2-1.tar.gz;
    sha256 = "be1db76ee75dd250d42a6db1aa2dec4513ecdab9e23ea5c9e0c27bfcee963177";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller khi-robot-control khi-duaro-moveit-config joint-trajectory-controller position-controllers robot-state-publisher tf khi-duaro-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
