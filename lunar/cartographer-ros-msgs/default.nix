
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-cartographer-ros-msgs";
  version = "0.2.0-r4";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/lunar/cartographer_ros_msgs/0.2.0-4.tar.gz;
    sha256 = "7a8fd4039361ad405f0f842dd72606cb4376a0c8754e2147f154e91f27905bc5";
  };

  buildInputs = [ message-generation geometry-msgs ];
  propagatedBuildInputs = [ geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
