
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-description, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs-description, khi-rs-gazebo, khi-rs-ikfast-plugin, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs080n-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-khi-robot";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "38402ef00c78324a9a31b42d3d8962b81edbbdb6fa8e14fa9e01f2bdc868a439";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ khi-duaro-description khi-duaro-gazebo khi-duaro-ikfast-plugin khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs-description khi-rs-gazebo khi-rs-ikfast-plugin khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs013n-moveit-config khi-rs080n-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
