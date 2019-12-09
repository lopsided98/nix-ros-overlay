
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, pluginlib, std-msgs, catkin, roslib, ros-environment, eigen, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ml_classifiers-release/archive/release/melodic/ml_classifiers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "77588596b459e29cb22098164289c3b74e0a6326d372c99ce6025a422a21c564";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib std-msgs roslib eigen roscpp message-generation ];
  propagatedBuildInputs = [ pluginlib std-msgs roslib eigen roscpp message-runtime ];
  nativeBuildInputs = [ ros-environment catkin ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
