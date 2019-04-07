
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, pr2eus, control-msgs, catkin, rostest, moveit-msgs, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus-moveit";
  version = "0.3.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus_moveit/0.3.14-0.tar.gz;
    sha256 = "c6d406d24ab0f12f8f32bb26a1bc680223ef5c5f4fd85bdc0e4765ddd9760d86";
  };

  buildInputs = [ roseus moveit-msgs pr2eus control-msgs ];
  checkInputs = [ rostest moveit-planners-ompl ];
  propagatedBuildInputs = [ roseus moveit-msgs pr2eus control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus_moveit'';
    #license = lib.licenses.BSD;
  };
}
