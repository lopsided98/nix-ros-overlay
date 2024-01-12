
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-radar-msgs";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/radar_msgs-release/archive/release/noetic/radar_msgs/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "11f69076602e90734d55a57520c4b24bc317b15b4e57e1967df400e9a1cec083";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard ROS messages for radars'';
    license = with lib.licenses; [ asl20 ];
  };
}
