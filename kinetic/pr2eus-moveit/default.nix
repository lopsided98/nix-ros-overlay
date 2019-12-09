
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, pr2eus, roseus, catkin, moveit-msgs, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-moveit";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_moveit/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "c6d406d24ab0f12f8f32bb26a1bc680223ef5c5f4fd85bdc0e4765ddd9760d86";
  };

  buildType = "catkin";
  buildInputs = [ pr2eus moveit-msgs roseus control-msgs ];
  checkInputs = [ moveit-planners-ompl rostest ];
  propagatedBuildInputs = [ pr2eus moveit-msgs roseus control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
