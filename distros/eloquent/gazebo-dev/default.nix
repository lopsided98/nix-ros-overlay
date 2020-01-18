
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazeboSimulator }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-dev";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_dev/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "6d0de02f381a3707ef91d26f9b3af3fb0a322a3377e67c30116099d78e8b9a29";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
