
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_9 }:
buildRosPackage {
  pname = "ros-dashing-gazebo-dev";
  version = "3.3.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_dev/3.3.5-3.tar.gz";
    name = "3.3.5-3.tar.gz";
    sha256 = "8420cd3ca905fd6d073bdbee34025a94d8f01a2d1da62b2748574d9e55e712c8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo_9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
