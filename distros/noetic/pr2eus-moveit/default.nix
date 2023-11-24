
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, moveit-msgs, moveit-planners-ompl, pr2-gazebo, pr2eus, roseus, rostest }:
buildRosPackage {
  pname = "ros-noetic-pr2eus-moveit";
  version = "0.3.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/pr2eus_moveit/0.3.15-4.tar.gz";
    name = "0.3.15-4.tar.gz";
    sha256 = "8d0002e02e4c555435091d74e938cb1ed54940ab70092239399ea7a8890ec2af";
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
