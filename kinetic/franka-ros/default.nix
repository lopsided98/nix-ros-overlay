
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, panda-moveit-config, franka-description, franka-gripper, catkin, franka-control, franka-msgs, franka-example-controllers, franka-hw, franka-visualization }:
buildRosPackage {
  pname = "ros-kinetic-franka-ros";
  version = "0.6.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_ros/0.6.0-1.tar.gz;
    sha256 = "cbb14fbd21fa715844e4219c98cb539d925ac1ccd1d3122e283c12b0a88461a5";
  };

  propagatedBuildInputs = [ panda-moveit-config franka-gripper franka-description franka-msgs franka-example-controllers franka-hw franka-control franka-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    #license = lib.licenses.Apache 2.0;
  };
}
