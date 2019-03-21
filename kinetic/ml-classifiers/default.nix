
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, roslib, message-generation, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ml-classifiers";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/kinetic/ml_classifiers/0.4.1-0.tar.gz;
    sha256 = "1fe811a452e8e013f89e633420abdb96cedddf319710b4c575d2f735945925c2";
  };

  propagatedBuildInputs = [ roslib pluginlib message-runtime eigen std-msgs roscpp ];
  nativeBuildInputs = [ roslib message-generation pluginlib roslint eigen std-msgs catkin roscpp ];

  meta = {
    description = ''ml_classifiers'';
    #license = lib.licenses.BSD;
  };
}
