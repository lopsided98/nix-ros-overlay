
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-description, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs-description, khi-rs-gazebo, khi-rs-ikfast-plugin, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs080n-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "d6397e3b7383f1c0126daef61a9f70b2bfe9db74157a3de149d26dca420a950e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ khi-duaro-description khi-duaro-gazebo khi-duaro-ikfast-plugin khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs-description khi-rs-gazebo khi-rs-ikfast-plugin khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs080n-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
