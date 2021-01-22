
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-cartographer-ros-msgs";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/kinetic/cartographer_ros_msgs/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "cb110a23bc8cf695ad73e83e121a884546821bd978a2b9a10972bd1fb790cea1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
