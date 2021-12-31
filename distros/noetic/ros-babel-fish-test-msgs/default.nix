
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-babel-fish-test-msgs";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/noetic/ros_babel_fish_test_msgs/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "67d20d43b351518405030c80ed6e85105980f1f974c23bb371d7144843d8113f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test messages for the ros_babel_fish project tests.'';
    license = with lib.licenses; [ mit ];
  };
}
