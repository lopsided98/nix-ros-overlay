
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, rosbridge-server }:
buildRosPackage {
  pname = "ros-kinetic-ros-explorer";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/jstnhuang-release/ros_explorer-release/archive/release/kinetic/ros_explorer/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "5a013b0dc326164b64d471ef26402079a0af66bbd5132dd43725c299b2867595";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosbridge-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A web interface for exploring the ROS graph'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
