
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources-fanuc-description, moveit-resources-panda-description, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rostest, rosunit, tf2, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-ompl";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_ompl/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "78ccf8981abb3b1f843e8738cbde3950c6e872eb17d67f1e5e3e923b227f9953";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-fanuc-description moveit-resources-panda-description moveit-resources-pr2-description rostest rosunit tf2-eigen ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
