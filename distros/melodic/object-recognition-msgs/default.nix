
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-object-recognition-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/melodic/object_recognition_msgs/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "0d4a39404ca6ce3fe26eb6a00df0edf208a58651c7605d42f20c9c6a2df9be72";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
