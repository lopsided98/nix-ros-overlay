
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, uuid-msgs, message-generation, message-runtime, dynamic-reconfigure, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-py-trees-msgs";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/stonier/py_trees_msgs-release/archive/release/kinetic/py_trees_msgs/0.3.6-0.tar.gz;
    sha256 = "98321ee885da8d5be668962f5d3205adde0d61f4daf749db394412b42cd51945";
  };

  buildInputs = [ actionlib-msgs uuid-msgs message-generation dynamic-reconfigure std-msgs ];
  propagatedBuildInputs = [ actionlib-msgs uuid-msgs message-runtime dynamic-reconfigure std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by py_trees_ros and some extras for the mock demos/tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
