
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-description, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs-description, khi-rs-gazebo, khi-rs-ikfast-plugin, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs025n-moveit-config, khi-rs080n-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-khi-robot";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "5ef06dc679a291db9268257e940a8c732613d1485c54aeef05be02bedb392de1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ khi-duaro-description khi-duaro-gazebo khi-duaro-ikfast-plugin khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs-description khi-rs-gazebo khi-rs-ikfast-plugin khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs013n-moveit-config khi-rs025n-moveit-config khi-rs080n-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
