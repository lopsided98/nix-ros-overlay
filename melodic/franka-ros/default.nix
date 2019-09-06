
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, panda-moveit-config, franka-gripper, franka-description, catkin, franka-control, franka-msgs, franka-example-controllers, franka-hw, franka-visualization }:
buildRosPackage {
  pname = "ros-melodic-franka-ros";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_ros/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "4d533878ff04e67f95df1bc67a9fd2df096055d8c7d7e4580f0e9f02089bc272";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ panda-moveit-config franka-description franka-gripper franka-control franka-msgs franka-example-controllers franka-hw franka-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
