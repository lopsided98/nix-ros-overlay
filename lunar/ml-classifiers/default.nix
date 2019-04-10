
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, roslib, message-generation, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-ml-classifiers";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/lunar/ml_classifiers/0.4.1-0.tar.gz;
    sha256 = "ea939b619384c0fc733fdb2ce1ba6e3dfb0be066d760cc237238adc33ec6c57e";
  };

  buildInputs = [ roslib message-generation pluginlib roslint eigen std-msgs roscpp ];
  propagatedBuildInputs = [ roslib pluginlib message-runtime eigen std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ml_classifiers'';
    #license = lib.licenses.BSD;
  };
}
