
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, pluginlib, catkin, roslib, message-generation, message-runtime, eigen, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ml-classifiers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/astuff/ml_classifiers-release/archive/release/kinetic/ml_classifiers/1.0.1-1.tar.gz;
    sha256 = "18800f21104d209be15cd6e82778a6d9ee183fddab7328ec9e7208c29a71abb7";
  };

  buildInputs = [ pluginlib roscpp message-generation eigen std-msgs roslib ];
  propagatedBuildInputs = [ pluginlib roscpp message-runtime eigen std-msgs roslib ];
  nativeBuildInputs = [ ros-environment catkin ];

  meta = {
    description = ''ml_classifiers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
