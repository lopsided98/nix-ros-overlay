
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-msgs-release/archive/release/melodic/dynamixel_workbench_msgs/2.0.0-0.tar.gz;
    sha256 = "f4d7567a8deb08fa914feb0d768f67ad855f1c9baf060734bbe593b6961e070f";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package includes ROS messages and services for dynamixel_workbench packages'';
    #license = lib.licenses.Apache 2.0;
  };
}
