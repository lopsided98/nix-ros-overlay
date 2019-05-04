
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, khi-rs-gazebo, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-robot-control, catkin, khi-robot-bringup, khi-duaro-moveit-config, khi-rs080n-moveit-config, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs-ikfast-plugin, khi-robot-msgs, khi-duaro-description, khi-rs-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot/1.1.1-1.tar.gz;
    sha256 = "3c022d607e97bdab614c225a61a8ae4f6ba8baef4b4ba85ecb811321ab73ed0b";
  };

  propagatedBuildInputs = [ khi-rs-gazebo khi-duaro-gazebo khi-duaro-ikfast-plugin khi-robot-control khi-robot-bringup khi-duaro-moveit-config khi-rs080n-moveit-config khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs-ikfast-plugin khi-robot-msgs khi-duaro-description khi-rs-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
