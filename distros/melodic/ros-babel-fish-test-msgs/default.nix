
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish-test-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish_test_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "5fe57d22385d5e12ec288f9160c4f039a6e16ca618fae43994f40d983c691e65";
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
