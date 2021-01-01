
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/kinetic/object_recognition_msgs/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "a04086c726f66fbdde92aada134688305fe3a446ade8f8cf2f7d6ca78f07a51a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
