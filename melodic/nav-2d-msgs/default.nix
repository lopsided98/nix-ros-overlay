
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-2d-msgs";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/nav_2d_msgs/0.2.5-1.tar.gz;
    sha256 = "a69fbc32255ea51112ab78b8b5b2b8c4b38ec8263bd961558c0a7a66bf89eb20";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.'';
    #license = lib.licenses.BSD;
  };
}
