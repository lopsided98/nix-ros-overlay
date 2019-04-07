
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, roslib, message-generation, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ml-classifiers";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/melodic/ml_classifiers/0.4.1-0.tar.gz;
    sha256 = "8d0314032aceb9b0ecc092f8aedef9e87342bb6bf9d33c58261e4597038f703a";
  };

  buildInputs = [ roslib message-generation pluginlib roslint eigen std-msgs roscpp ];
  propagatedBuildInputs = [ roslib pluginlib message-runtime eigen std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ml_classifiers'';
    #license = lib.licenses.BSD;
  };
}
