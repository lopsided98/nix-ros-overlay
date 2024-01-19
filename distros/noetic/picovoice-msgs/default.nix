
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-picovoice-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/picovoice_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d63ee582eba6b4e8fe24de8e2b6289cbabcc4fbea585966e10f7605cda05975a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interfaces for interacting with Picovoice driver nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
