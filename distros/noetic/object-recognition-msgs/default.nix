
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-object-recognition-msgs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/noetic/object_recognition_msgs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "4f78239509f037433d3b8dbc38dca2b452d693889a46c6f898168c20ff62aa32";
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
