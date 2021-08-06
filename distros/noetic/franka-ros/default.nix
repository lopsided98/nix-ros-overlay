
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-control, franka-description, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, franka-visualization, panda-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-franka-ros";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_ros/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "7f60758fe4416f505fce7b87816d4c02a75bffe19998e08c7fdd0527084edb39";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-control franka-description franka-example-controllers franka-gripper franka-hw franka-msgs franka-visualization panda-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
