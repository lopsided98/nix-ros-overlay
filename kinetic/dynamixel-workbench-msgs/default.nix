
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-msgs-release/archive/release/kinetic/dynamixel_workbench_msgs/2.0.0-0.tar.gz;
    sha256 = "5ce36f961e5d18eed39b03c502750eeb7df6fdf6f309d5c281a568a6edd55aa0";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''This package includes ROS messages and services for dynamixel_workbench packages'';
    #license = lib.licenses.Apache 2.0;
  };
}
