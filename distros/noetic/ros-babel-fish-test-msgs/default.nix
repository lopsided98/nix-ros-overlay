
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-babel-fish-test-msgs";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/noetic/ros_babel_fish_test_msgs/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "23b8229d1479dc91b0e05ec4f536c4f80eb3a529f9aa64ddbedc3107309d846e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test messages for the ros_babel_fish project tests.'';
    license = with lib.licenses; [ mit ];
  };
}
