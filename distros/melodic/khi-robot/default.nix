
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-description, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs-description, khi-rs-gazebo, khi-rs-ikfast-plugin, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs080n-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-khi-robot";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_robot/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b655c268651024301efbbf3b19403eec907af1d075347063715aa1e1a21d5d65";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ khi-duaro-description khi-duaro-gazebo khi-duaro-ikfast-plugin khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs-description khi-rs-gazebo khi-rs-ikfast-plugin khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs080n-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
