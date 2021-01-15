
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, moveit-msgs, moveit-planners-ompl, pr2eus, roseus, rostest }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-moveit";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_moveit/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "c6d406d24ab0f12f8f32bb26a1bc680223ef5c5f4fd85bdc0e4765ddd9760d86";
  };

  buildType = "catkin";
  checkInputs = [ moveit-planners-ompl rostest ];
  propagatedBuildInputs = [ control-msgs moveit-msgs pr2eus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
