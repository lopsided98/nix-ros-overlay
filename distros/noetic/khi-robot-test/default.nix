
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs080n-moveit-config, moveit-commander, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-test";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_robot_test/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "e3b618300bb7535964da9ae8d925debfe23dfcd653d104bd6f893495e4397468";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs013n-moveit-config khi-rs080n-moveit-config moveit-commander rostest ];
  propagatedBuildInputs = [ khi-robot-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
