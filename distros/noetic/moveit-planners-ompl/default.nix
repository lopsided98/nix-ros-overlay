
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, moveit-core, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-ompl";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_ompl/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "b3c4ca77f8d50bf4dbd1f6444b10d5a86fb0e4ae5b4abf37aad31a39ef898a9a";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-pr2-description rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure moveit-core moveit-ros-planning ompl pluginlib rosconsole roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
