
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-foxy-gazebo-dev";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/foxy/gazebo_dev/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "3bdecff7db5745ca647ecf6279fe07a18f42366130618a19c19d38f5e615601a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
