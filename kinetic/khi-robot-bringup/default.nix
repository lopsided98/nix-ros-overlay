
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, joint-state-controller, khi-robot-control, catkin, duaro-moveit-config, joint-trajectory-controller, rostest, position-controllers, duaro-description, robot-state-publisher, roslaunch, tf }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-bringup";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_bringup/1.0.0-0.tar.gz;
    sha256 = "9c657c8d530f04e002b42104c4bda94403278bd533bbfba4d9ddba12b8b1bb56";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller khi-robot-control duaro-moveit-config joint-trajectory-controller position-controllers duaro-description robot-state-publisher tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    #license = lib.licenses.BSD;
  };
}
