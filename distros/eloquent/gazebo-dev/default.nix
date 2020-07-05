
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_9 }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-dev";
  version = "3.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_dev/3.4.4-1.tar.gz";
    name = "3.4.4-1.tar.gz";
    sha256 = "393a68e9f8c526ff869df64efb2e9c115145d97d12ecd4dc92ed4bf5a3c3dcb1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo_9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
