
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazeboSimulator }:
buildRosPackage {
  pname = "ros-crystal-gazebo-dev";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_dev/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "a7820291c149e6e678fe5b6b4076fc4aa4872ad674555d4f8ec3cc072fae6968";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
