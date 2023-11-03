
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, moveit-msgs, moveit-planners-ompl, pr2-gazebo, pr2eus, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-pr2eus-moveit";
  version = "0.3.15-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/pr2eus_moveit/0.3.15-3.tar.gz";
    name = "0.3.15-3.tar.gz";
    sha256 = "99b7121252a81953aa0ea54ec71f442ac207ed364775eec3ee72aaa8ab598c3c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-planners-ompl pr2-gazebo rostest ];
  propagatedBuildInputs = [ control-msgs moveit-msgs pr2eus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
