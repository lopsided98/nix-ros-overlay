
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, catkin, shape-msgs, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/kinetic/object_recognition_msgs/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "a04086c726f66fbdde92aada134688305fe3a446ade8f8cf2f7d6ca78f07a51a";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs shape-msgs actionlib-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs shape-msgs actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
