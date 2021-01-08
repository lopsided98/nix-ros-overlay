
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, dynamic-reconfigure, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-py-trees-msgs";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_msgs-release/archive/release/noetic/py_trees_msgs/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "a472c703fa0c24a837a7a12176663d4a76cda25e174c58c6b8b700cc430b723c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by py_trees_ros and some extras for the mock demos/tests.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
