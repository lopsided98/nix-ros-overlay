
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-object-recognition-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/object_recognition_msgs-release/archive/release/lunar/object_recognition_msgs/0.4.1-0.tar.gz;
    sha256 = "acbf1a2850fae533f454dd9371dfaf59780e8779a49245faf88ead3893444211";
  };

  buildInputs = [ shape-msgs message-generation actionlib-msgs std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs message-runtime actionlib-msgs std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core'';
    #license = lib.licenses.BSD;
  };
}
