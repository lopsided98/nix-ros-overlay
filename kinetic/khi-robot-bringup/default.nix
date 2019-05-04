
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, khi-robot-control, catkin, khi-duaro-moveit-config, joint-trajectory-controller, rostest, position-controllers, robot-state-publisher, roslaunch, tf, khi-duaro-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-bringup";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_bringup/1.1.1-1.tar.gz;
    sha256 = "711da995ed296beea2c599c2698b2418b85f52e2853ae9a5e462eda655d01e8c";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller khi-robot-control khi-duaro-moveit-config joint-trajectory-controller position-controllers robot-state-publisher tf khi-duaro-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
