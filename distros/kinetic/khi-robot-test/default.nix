
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs080n-moveit-config, moveit-commander, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-test";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_test/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "39f9f4a055e622b4c6a097541578c10ddfbc284254d4f045fd779f247833a8b1";
  };

  buildType = "catkin";
  checkInputs = [ khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs080n-moveit-config moveit-commander rostest ];
  propagatedBuildInputs = [ khi-robot-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
