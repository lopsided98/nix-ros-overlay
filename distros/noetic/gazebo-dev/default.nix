
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo_11 }:
buildRosPackage {
  pname = "ros-noetic-gazebo-dev";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_dev/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "ea57ba4d3f0209c6d4912ef9476b9761e272ae14f55b7e588585458cb9e9f2df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
