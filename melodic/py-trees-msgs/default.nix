
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, uuid-msgs, message-generation, message-runtime, dynamic-reconfigure, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-py-trees-msgs";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/stonier/py_trees_msgs-release/archive/release/melodic/py_trees_msgs/0.3.6-0.tar.gz;
    sha256 = "71d8d3b25202546af7f8f085a532d72bf3fc35a591958d88927c6506571f3b37";
  };

  propagatedBuildInputs = [ uuid-msgs message-runtime actionlib-msgs dynamic-reconfigure std-msgs ];
  nativeBuildInputs = [ uuid-msgs message-generation actionlib-msgs dynamic-reconfigure std-msgs catkin ];

  meta = {
    description = ''Messages used by py_trees_ros and some extras for the mock demos/tests.'';
    #license = lib.licenses.BSD;
  };
}
