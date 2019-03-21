
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, catkin, roslib, message-generation, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ml-classifiers";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/melodic/ml_classifiers/0.4.0-0.tar.gz;
    sha256 = "d2ff2bb82ef058b476e9b0ca97006a18aae8e0d7c4e16401a6b87300680331cf";
  };

  propagatedBuildInputs = [ roslib pluginlib message-runtime eigen std-msgs roscpp ];
  nativeBuildInputs = [ roslib message-generation pluginlib roslint eigen std-msgs catkin roscpp ];

  meta = {
    description = ''ml_classifiers'';
    #license = lib.licenses.BSD;
  };
}
