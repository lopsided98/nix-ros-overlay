
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-humble-gazebo-dev";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_dev/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "b88bb4ca62bab49d30260b178c01b46dd9cfcfea1684a12ec691dbaec33c0ade";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
