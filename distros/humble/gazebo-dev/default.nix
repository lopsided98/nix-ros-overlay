
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-humble-gazebo-dev";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_dev/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "a7ccdad257957f75ab5ee8bc95be33f2782d54df8bc43b0a4cbebf38c81d3e13";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
