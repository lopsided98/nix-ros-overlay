
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, openssl, ros-babel-fish-test-msgs, rosapi, roscpp, roscpp-tutorials, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "06ffcd85e9807a408e0fd1a3ffdff26bcfde5cc9c259eef8d76e89832df8706d";
  };

  buildType = "catkin";
  checkInputs = [ ros-babel-fish-test-msgs rosapi roscpp-tutorials ];
  propagatedBuildInputs = [ actionlib openssl roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_babel_fish package'';
    license = with lib.licenses; [ mit ];
  };
}
