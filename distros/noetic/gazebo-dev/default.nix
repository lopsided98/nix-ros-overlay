
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo_11 }:
buildRosPackage {
  pname = "ros-noetic-gazebo-dev";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_dev/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "2dd050266fb546009ebe4df9bb16265afa2db419122009a93a52386bfeac17f9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Provides a cmake config for the default version of Gazebo for the ROS distribution.";
    license = with lib.licenses; [ asl20 ];
  };
}
