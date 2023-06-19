
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs020n-moveit-config, khi-rs080n-moveit-config, moveit-commander, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-khi-robot-test";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_robot_test/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "47772894f6441ede37419058b0be76f84ea0f9f8a72212f077ef486ca06cbaa8";
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
