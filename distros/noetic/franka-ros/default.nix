
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-control, franka-description, franka-example-controllers, franka-gazebo, franka-gripper, franka-hw, franka-msgs, franka-visualization, panda-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-franka-ros";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_ros/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "3302b0a6b292356f1dec1873affe90cf1fc9641f57b067f23e25a33191963cc4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-control franka-description franka-example-controllers franka-gazebo franka-gripper franka-hw franka-msgs franka-visualization panda-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
