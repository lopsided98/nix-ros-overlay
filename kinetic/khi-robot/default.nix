
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, khi-rs-gazebo, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-robot-control, catkin, khi-robot-bringup, khi-duaro-moveit-config, khi-rs007n-moveit-config, khi-rs007l-moveit-config, khi-rs-ikfast-plugin, khi-rs080n-moveit-config, khi-robot-msgs, khi-duaro-description, khi-rs-description }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "e44b715ba4d86e915967708a6d4a4d993a2ffdfe3bf2cc9e950096a2459c2f2b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ khi-rs-gazebo khi-duaro-gazebo khi-duaro-ikfast-plugin khi-robot-control khi-robot-bringup khi-duaro-moveit-config khi-rs007n-moveit-config khi-rs007l-moveit-config khi-rs-ikfast-plugin khi-rs080n-moveit-config khi-robot-msgs khi-duaro-description khi-rs-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
