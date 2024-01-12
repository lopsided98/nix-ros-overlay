
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs020n-moveit-config, khi-rs080n-moveit-config, moveit-commander, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-test";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot_test/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "71f4a9bf9c7a4ebe0b7964a1e029cd71919a6de36b662cfb74f12e1eaa998cbb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs013n-moveit-config khi-rs020n-moveit-config khi-rs080n-moveit-config moveit-commander rostest ];
  propagatedBuildInputs = [ khi-robot-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
