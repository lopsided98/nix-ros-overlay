
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, message-generation, message-runtime, pluginlib, ros-environment, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ml_classifiers-release/archive/release/melodic/ml_classifiers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "77588596b459e29cb22098164289c3b74e0a6326d372c99ce6025a422a21c564";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ eigen message-runtime pluginlib roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
