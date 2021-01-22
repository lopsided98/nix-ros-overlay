
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, message-generation, message-runtime, pluginlib, ros-environment, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/ml_classifiers-release/archive/release/kinetic/ml_classifiers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "18800f21104d209be15cd6e82778a6d9ee183fddab7328ec9e7208c29a71abb7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ eigen message-runtime pluginlib roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ros-environment ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
