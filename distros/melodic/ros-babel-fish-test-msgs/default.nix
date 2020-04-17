
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish-test-msgs";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish_test_msgs/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "a7781eef2850ed07e2dae2972c88cfe5eac1433cb7d2eb938c9db54bc6c82ed0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_babel_fish_test_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
