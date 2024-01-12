
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, dynamic-reconfigure, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-py-trees-msgs";
  version = "0.3.7-r2";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_msgs-release/archive/release/noetic/py_trees_msgs/0.3.7-2.tar.gz";
    name = "0.3.7-2.tar.gz";
    sha256 = "9c976c1ff899f72608b244e445fe3900ef0b32b2ac4d7361c3c5ccd1a6f36c4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by py_trees_ros and some extras for the mock demos/tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
